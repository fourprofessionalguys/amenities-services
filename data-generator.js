const faker = require('faker');

const amenities = [
  {
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
    name: 'Garden/backyard',
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
    name: 'Parking on premises',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Parking.jpg'
  },
  {
    name: 'Pool',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Pool.jpg'
  },
  {
    name: 'Wifi',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Router.jpg'
  },
  {
    name: 'Cable TV',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/cabletv.png'
  },
  {
    name: 'Dishwasher',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/dishwasher.jpg'
  },
  {
    name: 'Fire Extinguisher',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/fire-extinguisher.jpg'
  },
  {
    name: 'Washer/Dryer',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/washer%3Adryer.jpg'
  },
  {
    name: 'Heating',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/AirConditioning.jpg'
  },
  {
    name: 'Elevator',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/elevatorbutton.jpg'
  },
  {
    name: 'Self check in',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/self-check-in.jpg'
  },
];
const generateOneListing = () => {
  return {
    title: faker.random.word()
  }
}

const generateManyListings = (n) => {
  const results = [];

  for (let i = 0; i < n; i++) {
    results.push(generateOneListing());
  }
  return results;
}
module.exports.amenities = amenities;
module.exports.listings = generateManyListings(100);
