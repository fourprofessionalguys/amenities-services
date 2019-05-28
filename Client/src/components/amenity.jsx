import React from 'react';
import ReactDOM from 'react-dom';
import styled, {createGlobalStyle} from 'styled-components';

const Img = styled.div`
  background-image: ${props => `url('${props.photo}')`};
  background-size: 100% 100%;
  background-repeat: no-repeat;
  height: 197px;
  width: 197.83px;
`;

const ImgWrapper = styled.div`
  height: 200px;
  width: 197.83px;
  text-align: center;
`;

const ImgDescription = styled.p`
  font-size: 16px;
  font-weight: 400;
`;

const Amenity = ({photo, name}) => {
  return (
    <ImgWrapper className="col-2">
      <Img photo={photo} className="image"/>
      <ImgDescription className="description">{name}</ImgDescription>
    </ImgWrapper>
  );
};

export default Amenity;