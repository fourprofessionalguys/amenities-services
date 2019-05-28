import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';
import axios from 'axios';

import AmenitiesRow from './amenitiesRow.jsx';
import ModalBody from './modalBody.jsx';

const GlobalStyle = createGlobalStyle`
  body {
    font-family: 'Roboto', Helvetica Neue, sans-serif;
    font-size: 14px;
    color: #484848;
    line-height: 1.43;
  }
`;

const PageContainer = styled.div`
  width: 1265px;
  margin: auto auto 3rem auto;
`;

const AmenitiesTitle = styled.h1`
  font-weight: 800;
  font-size: 36px;
  line-height: 40px;
`;

const AmenitiesDescription = styled.h4`
  font-weight: 400;
  font-size: 16px;
  line-height: 1.375em;
  word-wrap: break-word
`;

const Button = styled.button`
  color: var(--color-brand-plus, #914669);
  background: transparent;
  border: 0px;
  cursor: pointer;
  margin: 0px;
  padding: 0px;
  user-select: auto;
  text-align: left;
  &:hover {
    text-decoration: underline;
  }
`;

const ButtonWrapper = styled.div`
  margin: 0px;
  word-wrap: break-word;
  font-size: 16px;
  font-weight: 600;
`;


export default class App extends React.Component {
  constructor(props) {
    super(props);
    const randy = Math.floor(Math.random() * 100) + 1;
    this.state = {
      listingName: '',
      listingId: randy,
      amenities: [],
      needs: [],
      special: [],
      showModal: false
    };
    this.toggleModal = this.toggleModal.bind(this);
    this.grabNeeds = this.grabNeeds.bind(this);
    this.grabSpecial = this.grabSpecial.bind(this);
  }

  toggleModal () {
    this.setState({
      showModal: !this.state.showModal
    });
  }

  componentDidMount () {
    axios({
      method: 'POST',
      url: '/api',
      data: JSON.stringify(this.state),
      headers: {
        'Content-Type': 'application/json'
      }
    }).then(data => data.data)
      .then(data => {
        let needs = this.grabNeeds(data);
        let special = this.grabSpecial(data);
        this.setState({
          amenities: data,
          needs: needs,
          special: special
        });
      }).catch(error => console.error('Error:', error));
  }

  grabNeedsNames (amenities) {
    let targetNames = ['Wifi', 'TV', 'Bathroom essentials', 'Bedroom Comforts', 'Coffee maker', 'Hair dryer', 'Iron', 'Carbon monoxide detector', 'Smoke detector', 'Fire extinguisher'];
    let amenityNames = amenities.map(obj => obj.name);
    return targetNames.filter(targetName => amenityNames.some(name => name === targetName));
  }
  
  grabSpecialNames (amenities) {
    let targetNames = ['Wifi', 'TV', 'Bathroom essentials', 'Bedroom Comforts', 'Coffee maker', 'Hair dryer', 'Iron', 'Carbon monoxide detector', 'Smoke detector', 'Fire extinguisher'];
    let amenityNames = amenities.map(obj => obj.name);
    return amenityNames.filter(amenityName => !targetNames.some(name => name === amenityName));
  }
  
  grabNeeds (amenities) {
    let amenityNames = this.grabNeedsNames(amenities);
    return amenities.filter(obj => amenityNames.some(name => name === obj.name));
  }
  
  grabSpecial (amenities) {
    let amenityNames = this.grabSpecialNames(amenities);
    return amenities.filter(obj => amenityNames.some(name => name === obj.name));
  }

  render() {
    return (
      <div>
        <GlobalStyle />
        <ModalBody needs={this.state.needs} special={this.state.special} amenities={this.state.amenities} show={this.state.showModal} hideModal={this.toggleModal}></ModalBody>
        <PageContainer>
          <AmenitiesTitle>Amenities</AmenitiesTitle>
          <AmenitiesDescription>These amenities are available to you.</AmenitiesDescription>
          <div className="pb-5">
            <AmenitiesRow id="row1" amenities={this.state.amenities.slice(0, 6)}/>
            <AmenitiesRow id="row2" amenities={this.state.amenities.slice(6, 12)} />
          </div>
          <ButtonWrapper className="pt-3">
            <Button id="button" onClick={this.toggleModal}>Show all {this.state.amenities.length} amenities</Button>
          </ButtonWrapper>
        </PageContainer>
      </div>
    );
  }
}



