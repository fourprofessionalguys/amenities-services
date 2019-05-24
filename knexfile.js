// Update with your config settings.

module.exports = {

  development: {
    client: 'pg',
    connection: 'postgres://flamingeagle9000:rosie123@localhost/airbnb_amenities',
    migrations: {
      directory: 'Server/db/migrations'
    },
    seeds: {
      directory: 'Server/db/seeds/dev',
    },
  },
};
