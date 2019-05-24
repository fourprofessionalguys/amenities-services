import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';

import AmenitiesRow from './amenitiesRow.jsx';

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
    };
  }

  componentDidMount () {
    fetch('/api', {
      method: 'POST',
      body: JSON.stringify(this.state),
      headers: {
        'Content-Type': 'application/json'
      }
    }).then(data => data.json())
      .then(data => {
        this.setState({
          amenities: data
        });
      }).catch(error => console.error('Error:', error));
    // $.ajax({
    //   type: 'POST',
    //   url: '/api',
    //   data: JSON.stringify(this.state),
    //   contentType: 'application/json',
    //   success: (data) => {
    //     this.setState({
    //       amenities: data,
    //     });
    //   }
    // });
  }

  render() {
    return (
      <div>
        <GlobalStyle />
        <PageContainer>
          <AmenitiesTitle>Amenities</AmenitiesTitle>
          <AmenitiesDescription>These amenities are available to you.</AmenitiesDescription>
          <div className="pb-5">
            <AmenitiesRow id="row1" amenities={this.state.amenities.slice(0, 6)}/>
            <AmenitiesRow id="row2" amenities={this.state.amenities.slice(6, 12)} />
          </div>
          <ButtonWrapper className="pt-3">
            <Button id="button">Show all {this.state.amenities.length} amenities</Button>
          </ButtonWrapper>
        </PageContainer>
      </div>
    );
  }
}


