import React from 'react';
import '../main.scss';

const ModalComp = ({needs, special}) => {
  return (
    <div id="ContainerSSB">
      <div className="HeaderSSB">
        Special to this place
        <div className="DescriptionSSB">This place has these unique amenities.</div>
      </div>
      <div className="CategoryContainerSSB">
        {special.map((obj, i) => 
          <div className="AmenitySSB" key={i}>
            <div className="NameWrapperSSB">{obj.name}</div>
            <img className="ImgSSB" src={obj.photoUrl}></img>
          </div>
        )}
      </div>
      <div className="HeaderSSB">
        Everything you need
        <div className="DescriptionSSB">This Airbnb Plus home comes with these amenities.</div>
      </div>
      <div className="CategoryContainerSSB">
        {needs.map((obj, i) => 
          <div className="AmenitySSB" key={i}>
            <div className="NameWrapperSSB">{obj.name}</div>
            <img className="ImgSSB" src={obj.photoUrl}></img>
          </div>
        )}
      </div>
    </div>
  );
};



export default ModalComp;