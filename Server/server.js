const environment = process.env.NODE_ENV || 'production';
const configuration = require('../knexfile')[environment];
const database = require('knex')(configuration);
const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();

//Middleware
app.use(cors());
app.use(express.static(__dirname + '/../Public'));
app.use(bodyParser.json());

//Routes
app.get('/amenities/:listingId', (req, res) => {
  const item = Number(req.params.listingId);
  database('listings_amenities').where({listing_id: item}).select('amenity_id')
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