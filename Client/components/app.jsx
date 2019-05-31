import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';
import axios from 'axios';
import '../main.scss';

import AmenitiesRow from './amenitiesRow.jsx';
import ModalBody from './modalBody.jsx';


export default class Amenities extends React.Component {
  constructor(props) {
    super(props);
    const randy = Math.floor(Math.random() * 100) + 1;
    this.state = {
      listingName: '',
      listingId: randy,
      amenities: [],
      mainAmenities: [],
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
      method: 'GET',
      url: `http://localhost:3003/amenities/${this.state.listingId}`,
      data: JSON.stringify(this.state),
      headers: {
        'Content-Type': 'application/json'
      }
    }).then(data => data.data)
      .then(data => {
        let needs = this.grabNeeds(data);
        let special = this.grabSpecial(data);
        let mainAmenities = this.grabMainAmenities(data);
        this.setState({
          amenities: data,
          needs: needs,
          special: special,
          mainAmenities: mainAmenities
        });
      }).catch(error => console.error('Error:', error));
  }
  grabMainAmenities (amenities) {
    let targetNames = ['Suitable for events', 'Air conditioning', 'Free parking on premises', 'Pool', 'Wifi', 'TV', 'Bathroom essentials', 'Bedroom Comforts', 'Coffee maker', 'Dryer', 'Dishwasher', 'Elevator', 'Indoor fireplace', 'Full kitchen', 'Hair dryer', 'Heating', 'Iron', 'Carbon monoxide detector', 'Self check-in', 'Washer', 'Private hot tub'];
    let amenityNames = amenities.map(obj => obj.name);
    amenityNames = targetNames.filter(targetName => amenityNames.some(name => name === targetName));
    return amenities.filter(obj => amenityNames.some(name => name === obj.name));
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
      <div id="bodySSB">
        <ModalBody needs={this.state.needs} special={this.state.special} amenities={this.state.amenities} show={this.state.showModal ? this.state.showModal: undefined} hideModal={this.toggleModal}></ModalBody>
        <div id="PageContainerSSB">

          <div id="AmenitiesTitleSSB">Amenities</div>
          <div id="AmenitiesDescriptionSSB">These amenities are available to you.</div>

          <div id="RowsWrapper">
            <AmenitiesRow amenities={this.state.mainAmenities}/>
          </div>
          <div id="ButtonWrapperSSB">
            <button id="ButtonSSB" onClick={this.toggleModal}>Show all {this.state.amenities.length} amenities</button>
          </div>
        </div>
      </div>
    );
  }
}



