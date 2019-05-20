// Update with your config settings.

module.exports = {

  development: {
    client: 'pg',
    connection: 'postgres://localhost/airbnb',
    migrations: {
      directory: 'Server/db/migrations'
    },
    seeds: {
      directory: 'Server/db/seeds/dev',
    },
  },
};
