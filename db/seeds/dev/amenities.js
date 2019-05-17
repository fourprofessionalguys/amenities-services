const data = require('../../../data-generator.js');
const amenities = data.amenities;
const listings = data.listings;
console.log(listings);
exports.seed = function(knex, Promise) {
  // Deletes ALL existing entries
  return knex('listings_amenities').del()
    .then(knex('listings').del())
    .then(knex('amenities').del())

    .then(() => {
      return Promise.all(knex('amenities').insert(data.amenities));
    });
};
