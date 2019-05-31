const faker = require('faker');

const amenities = [
  {
    name: 'Self check-in',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/self-check-in.png'
  },
  {
    name: 'Air conditioning',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/air-conditioning.png'
  },
  {
    name: 'Bathroom essentials',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/essentials.png'
  },
  {
    name: 'Bedroom comforts',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/extra-pillows-blankets.png'
  },
  {
    name: 'Carbon monoxide detector',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/co2-detector.png'
  },
  
  {
    name: 'Coffee maker',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/coffee-maker.png'
  },
  {
    name: 'Dishwasher',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/dishwasher.png'
  },
  {
    name: 'Dryer',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/dryer.png'
  },
  {
    name: 'Elevator',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/elevator.png'
  },
  {
    name: 'Fire Extinguisher',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/fire-extinguisher.png'
  },
  {
    name: 'Full kitchen',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/kitchen.png'
  },
  {
    name: 'Free parking on premises',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/parking.png'
  },
  {
    name: 'Hair dryer',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/hair-dryer.png'
  },
  {
    name: 'Heating',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/heating.png'
  },
  {
    name: 'Indoor fireplace',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/indoor-fireplace.png'
  },
  {
    name: 'Iron',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/iron.png'
  },
  {
    name: 'Pool',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/pool.png'
  },
  {
    name: 'Private hot tub',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/hot-tub.png'
  },
  {
    name: 'TV',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/tv.png'
  },
  {
    name: 'Smoke detector',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/smoke-detector.png'
  },
  {
    name: 'Washer',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/washer.png'
  },
  {
    name: 'Wifi',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/wireless-internet.png'
  },
  {
    name: 'Suitable for events',
    photoUrl: 'https://amenities-images.s3-us-west-1.amazonaws.com/Amenities/suitable-for-events.png'
  },
  {
    name: 'Smoking allowed',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/smoking-allowed.png'
  },
  {
    name: 'Baby bath',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/baby-bath.png'
  },
  {
    name: 'Baby crib',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/crib.png'
  },
  {
    name: 'Bathtub',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/bathtub.png'
  },
  {
    name: 'Children\'s books and toys',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/childrens-books-toys.png'
  },
  {
    name: 'Game Console',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/controller.png'
  },
  {
    name: 'Garden or backyard',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/garden-backyard.png'
  },
  {
    name: 'High chair',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/high-chair.png'
  },
  {
    name: 'Pets allowed',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/pets-allowed.png'
  },
  {
    name: 'Pool toys',
    photoUrl: 'https://s3-us-west-1.amazonaws.com/amenities-images/Amenities/pool-toys.png'
  },
];
const generateOneListing = () => {
  return {
    title: faker.random.word()
  };
};

const generateManyListings = (n) => {
  const results = [];

  for (let i = 0; i < n; i++) {
    results.push(generateOneListing());
  }
  return results;
};

var listings = generateManyListings(100);


module.exports.amenities = amenities;
module.exports.listings = listings;
