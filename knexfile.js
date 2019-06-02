// Update with your config settings.

module.exports = {

  // development: {
  //   client: 'pg',
  //   connection: {
  //     host: 'amenitiessb.chapn64cg7bm.us-east-1.rds.amazonaws.com',
  //     user: 'Srujan123',
  //     password: 'Rosie123',
  //     database: 'airbnb_amenities'
  //   },
  //   useNullAsDefault: true,
  //   charset: 'utf8',
  //   migrations: {
  //     directory: __dirname + '/Server/db/migrations'
  //   },
  //   seeds: {
  //     directory: __dirname + '/Server/db/seeds/dev'
  //   }
  // },

  // test: {
  //   client: 'pg',
  //   connection: {
  //     host: 'amenitiessb.chapn64cg7bm.us-east-1.rds.amazonaws.com',
  //     user: 'Srujan123',
  //     password: 'Rosie123',
  //     database: 'airbnb_amenities'
  //   },
  //   migrations: {
  //     directory: __dirname + '/Server/db/migrations'
  //   },
  //   seeds: {
  //     directory: __dirname + '/Server/db/seeds/dev'
  //   }
  // },

  // staging: {
  //   client: 'postgresql',
  //   connection: {
  //     host: 'amenitiessb.chapn64cg7bm.us-east-1.rds.amazonaws.com',
  //     user: 'Srujan123',
  //     password: 'Rosie123',
  //     database: 'airbnb_amenities'
  //   },
  //   pool: {
  //     min: 2,
  //     max: 10
  //   },
  //   migrations: {
  //     tableName: 'knex_migrations'
  //   }
  // },

  production: {
    client: 'pg',
    connection: {
      host: 'amenitiessb.chapn64cg7bm.us-east-1.rds.amazonaws.com',
      user: 'Srujan369',
      password: 'Rosie123',
      database: 'airbnb_amenities'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};
