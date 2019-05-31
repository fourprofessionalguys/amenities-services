import React from 'react';
import ReactDOM from 'react-dom';
import '../main.scss';

const Amenity = ({photo, name}) => {
  return (
    <div className="ImgWrapperSSB">
      <img className="ImgSSB" src={photo}></img>
      <div className="ImgDescriptionSSB">{name}</div>
    </div>
  );
};

export default Amenity;