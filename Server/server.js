const environment = process.env.NODE_ENV || 'development';
const configuration = require('../knexfile')[environment];
const database = require('knex')(configuration);
const express = require('express');
const app = express();
const bodyParser = require('body-parser');

//Middleware
app.use(express.static('../Public'));
app.use(bodyParser.json());

//Routes

app.post('/api', (req, res) => {
  const item = req.body.listingId;
  database('listings_amenities').where({listing_id: req.body.listingId}).select('amenity_id')
    .then((data) => {
      let amenIds = [];
      data.forEach(item => {
        amenIds.push(item.amenity_id);
      });
      database('amenities').whereIn('id', amenIds).select('name', 'photoUrl')
        .then((data) => {
          res.status(200).json(data);
        });
    })
    .catch(error => {
      res.status(500).json({error});
    });

});

//Start server
const port = 3003;

app.listen(port, () => console.log(`Listening on port ${port}`));