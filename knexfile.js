// Update with your config settings.

module.exports = {

  development: {
    client: 'pg',
    connection: 'postgres://localhost/airbnb_clone',
    migrations: {
      directory: './db/migrations'
    },
    seeds: {
      directory: './db/seeds/dev',
    },
  },
};
