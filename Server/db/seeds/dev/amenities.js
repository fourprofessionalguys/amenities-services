const data = require('../../../data-generator.js');

let amenitiesIds = [];
let listingsIds = [];

exports.seed = function(knex, Promise) {
  // Deletes ALL existing entries
  return knex('listings_amenities').del()
    .then(() => knex('listings').del())
    .then(() => knex('amenities').del())

    .then(() => {
      return Promise.all([
        knex('amenities').insert(data.amenities, 'id')
          .then(ids => {
            amenitiesIds = ids;
          })
          .then(() => {
            return knex('listings').insert(data.listings, 'id')
              .then(ids => {
                listingsIds = ids;
              })
              .then(() => {
                const generateOneRelationship = () => {
                  let randomAmenity = Math.floor(Math.random() * amenitiesIds.length);
                  let randomListing = Math.floor(Math.random() * listingsIds.length);
                  return {
                    amenity_id: amenitiesIds[randomAmenity],
                    listing_id: listingsIds[randomListing],
                  };
                };
                const generateRelationships = (n) => {
                  let results = [];
                  for (let i = 0; i < n; i++) {
                    results.push(generateOneRelationship());
                  }
                  return results;
                };
                return knex('listings_amenities').insert(generateRelationships(2000), 'id');
              });
          })
      ]);
    })
    .catch(error => console.log(`Error seeding data: ${error}`));
};
