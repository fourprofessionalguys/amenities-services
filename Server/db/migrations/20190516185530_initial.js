
exports.up = function(knex, Promise) {
  return Promise.all([

    knex.schema.createTable('listings', (table) => {
      table.increments('id').primary();
      table.string('title');
    }),
    knex.schema.createTable('amenities', (table) => {
      table.increments('id').primary();
      table.string('name');
      table.string('photoUrl');
    }),
    knex.schema.createTable('listings_amenities', (table) => {
      table.increments('id').primary();
      table.integer('amenity_id');
      table.integer('listing_id');
      table.foreign('listing_id').references('listings.id');
      table.foreign('amenity_id').references('amenities.id');
    }),
  ]);
};

exports.down = function(knex, Promise) {
  return Promise.all([
    knex.schema.dropTable('listings_amenities'),
    knex.schema.dropTable('listings'),
    knex.schema.dropTable('amenities'),
  ]);
};
