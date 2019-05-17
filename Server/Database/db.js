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



