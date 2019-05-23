import React from 'react'; 
import { shallow, mount } from 'enzyme';

import {Amenity, AmenitiesRow} from '../src/app.jsx';
import App from '../src/app.jsx';

let amenities = [{
  name: 'Air Conditioning',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/AirConditioning.jpg'
},
{
  name: 'Bedroom Comforts',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/BedroomComforts.jpg'
},
{
  name: 'Coffee maker',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Coffee.jpg'
},
{
  name: 'Fireplace',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Fireplace.jpg'
},
{
  name: 'Game Console',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/GameConsole.jpg'
},
{
  name: 'Garden or backyard',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Garden.jpg'
},
{
  name: 'Hot tub',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Hottub.png'
},
{
  name: 'Iron',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Iron.jpg'
},
{
  name: 'Kitchen',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Kitchen.jpg'
},
{
  name: 'Laptop friendly workspace',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Laptop.png'
},
{
  name: 'Free parking on premises',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Parking.jpg'
},
{
  name: 'Pool',
  photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Pool.jpg'
}];

describe('<Amenity />', () => {
  const name = 'Kitchen';
  const photo = 'https://s3-us-west-1.amazonaws.com/amenities-images/Kitchen.jpg';
  const amenityComp = shallow(<Amenity name={name} photo={photo}/>);

  it('should render as a part of the grid', () => {
    expect(amenityComp.find('.col-2')).toBeDefined();
  });
  it('should render a photo', () => {
    expect(amenityComp.find('.image').prop('photo')).toEqual(photo);
  });
  it('should render the appropriate description', () => {
    expect(amenityComp.text()).toEqual(name);
  });
});

describe('<AmenityRow />', () => {
  amenities = amenities.slice(0, 6);
  const wrapper = shallow(<AmenitiesRow amenities={amenities} />);
  it('should render the right number of components based on amenities', () => {
    expect(wrapper.children()).toHaveLength(amenities.length);
  });
});

describe('<App />', () => {
  const wrapper = shallow(<App />);
  it('should render two rows', () => {
    expect(wrapper.children()).toHaveLength(2);
  });
  it('should have a key named amenities in state that is an array', () => {
    expect(wrapper.state().amenities).toBeDefined;
    expect(wrapper.state().amenities).toMatchObject([]);
  });
});