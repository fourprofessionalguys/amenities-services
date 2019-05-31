import React from 'react';
import '../main.scss';
import Amenity from './amenity.jsx';

const AmenitiesRow = ({amenities}) => {
  return (
    <div>
      <div id="RowWrapper1">
        {amenities.slice(0, 6).map((amenity, i) => 
          <Amenity photo={amenity.photoUrl} name={amenity.name} key={i}/>
        )}
      </div>
      <div id="RowWrapper2">
        <div id="Amenity1Wrapper">
          {amenities.slice(6, 7).map((amenity, i) => 
            <Amenity photo={amenity.photoUrl} name={amenity.name} key={i} />
          )}
        </div>
        {amenities.slice(7).map((amenity, i) => 
          <div id="AmenityWrapper">
            <Amenity photo={amenity.photoUrl} name={amenity.name} key={i}/>
          </div>
        )}
      </div>
    </div>
  );
};

export default AmenitiesRow;