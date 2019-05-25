import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';

const Container = styled.div`
  width: 664px;
  padding-top: 42px;
`;

const CategoryContainer = styled.div`
  padding-bottom: 32px;
`;
const Header = styled.div`
  font-size: 32px;
  line-height: 36px;
  letter-spacing: normal;
  font-weight: 800;
  color: rgb(72, 72, 72);
  padding-top: 6px;
`;

const Description = styled.div`
  font-size: 16px;
  font-weight: 400;
  padding-bottom: 32px;
  margin-top: 8px;
`;

const Amenity = styled.div`
  display: flex;
  justify-content: space-between;
  padding-top: 20px;
  padding-bottom: 20px;
  border-top: 1px solid rgb(228, 228, 228);
  font-size: 16px;
  font-weight: 500;
  color: #484848;
`;

const Img = styled.img`
  width: 64px;
  height: 64px;
  max-width: 64px;
  max-height: 64px;
`;

const NameWrapper = styled.div`
  padding-top: 12px;
`;
const ModalComp = ({needs, special}) => {
  return (
    <Container>
      <Header>
        Special to this place
        <Description>This place has these unique amenities.</Description>
      </Header>
      <CategoryContainer>
        {special.map((obj, i) => 
          <Amenity key={i}>
            <NameWrapper>{obj.name}</NameWrapper>
            <Img src={obj.photoUrl}></Img>
          </Amenity>
        )}
      </CategoryContainer>
      <Header>
        Everything you need
        <Description>This Airbnb Plus home comes with these amenities.</Description>
      </Header>
      <CategoryContainer>
        {needs.map((obj, i) => 
          <Amenity key={i}>
            <NameWrapper>{obj.name}</NameWrapper>
            <Img src={obj.photoUrl}></Img>
          </Amenity>
        )}
      </CategoryContainer>
    </Container>
  );
};



export default ModalComp;