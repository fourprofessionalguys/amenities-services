const pg = require('pg');
const data = require('../../data-generator.js');
const knex = require('knex')({
  client: 'pg',
  version: '11.3',
  connection: {
    host: '127.0.0.1',
    user: 'flamingeagle9000',
    password: 'rosie123',
    database: 'airbnb_clone'
  }
});


knex.schema.createTable('listings', (table) => {
  table.increments('id').primary()
  table.string('title')
})

knex.schema.createTable('amenities', (table) => {
  table.increments('id').primary()
  table.string('name')
  table.string('photoUrl')
})

knex.schema.createTable('listings_amenities', (table) => {
  table.uuid('id').primary()
  table.integer('amenity_id')
  table.integer('listing_id')
  table.foreign('amenity_id').references('amenities.id')
  table.foreign('listing_id').references('listings.id')
})


