const pg = require('pg');
const db = require('knex')({
  client: 'pg',
  version: '11.3',
  connection: {
    host: '127.0.0.1',
    user: 'flamingeagle9000',
    password: 'rosie123',
    database: 'airbnb'
  }
});

module.exports = db;

