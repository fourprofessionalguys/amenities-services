import React from 'react';
import ReactDOM from 'react-dom';
import styled, {createGlobalStyle} from 'styled-components';

// const ImgSSB = styled.div`
//   background-image: ${props => `url('${props.photo}')`};
//   background-size: 100% 100%;
//   background-repeat: no-repeat;
//   height: 197px;
//   width: 197.83px;
//   position: absolute;
// `;

const ImgSSB = styled.img`
  height: 197px;
  width: 197.83px;
`;

const ImgWrapperSSB = styled.div`
  height: 200px;
  width: 197.83px;
  text-align: center;
`;

const ImgDescriptionSSB = styled.div`
  font-size: 16px;
  font-weight: 400;
`;

const Amenity = ({photo, name}) => {
  return (
    <ImgWrapperSSB className="col-2">
      <ImgSSB src={photo} className="image"></ImgSSB>
      <ImgDescriptionSSB>{name}</ImgDescriptionSSB>
    </ImgWrapperSSB>
  );
};

export default Amenity;