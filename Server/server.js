const environment = process.env.NODE_ENV || 'development';
const configuration = require('./knexfile')[environment];
const database = require('knex')(configuration);
const express = require('express');
const app = express();
const bodyParser = require('body-parser');

//Middleware
app.use(express.static('Client/dist'));
app.use(bodyParser());

//Routes
app.get('/api', (req, res) => {
  database('amenities').select()
    .then((amenities) => {
      res.status(200).json(amenities);
    })
    .catch(err => {
      res.status(500).json({error});
    });
});

//Start server
const port = 3002;

app.listen(port, () => console.log(`Listening on port ${port}`));