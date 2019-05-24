import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';

import Amenity from './amenity.jsx';

const AmenitiesRow = ({amenities}) => {
  return (
    <div className="row pt-5 amenitiesList">
      {amenities.map((amenity, i) => 
        <Amenity photo={amenity.photoUrl} name={amenity.name} key={i}/>
      )}
    </div>
  );
};

export default AmenitiesRow;