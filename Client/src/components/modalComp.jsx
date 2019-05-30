import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';

const ContainerSSB = styled.div`
  width: 664px;
  padding-top: 42px;
`;

const CategoryContainerSSB = styled.div`
  padding-bottom: 32px;
`;
const HeaderSSB = styled.div`
  font-size: 32px;
  line-height: 36px;
  letter-spacing: normal;
  font-weight: 800;
  color: rgb(72, 72, 72);
  padding-top: 6px;
`;

const DescriptionSSB = styled.div`
  font-size: 16px;
  font-weight: 400;
  padding-bottom: 32px;
  margin-top: 8px;
`;

const AmenitySSB = styled.div`
  display: flex;
  justify-content: space-between;
  padding-top: 20px;
  padding-bottom: 20px;
  border-top: 1px solid rgb(228, 228, 228);
  font-size: 16px;
  font-weight: 500;
  color: #484848;
`;

const ImgSSB = styled.img`
  width: 64px;
  height: 64px;
  max-width: 64px;
  max-height: 64px;
`;


const NameWrapperSSB = styled.div`
  padding-top: 12px;
`;
const ModalComp = ({needs, special}) => {
  return (
    <ContainerSSB>
      <HeaderSSB>
        Special to this place
        <DescriptionSSB>This place has these unique amenities.</DescriptionSSB>
      </HeaderSSB>
      <CategoryContainerSSB>
        {special.map((obj, i) => 
          <AmenitySSB key={i}>
            <NameWrapperSSB>{obj.name}</NameWrapperSSB>
            <ImgSSB src={obj.photoUrl}></ImgSSB>
          </AmenitySSB>
        )}
      </CategoryContainerSSB>
      <HeaderSSB>
        Everything you need
        <DescriptionSSB>This Airbnb Plus home comes with these amenities.</DescriptionSSB>
      </HeaderSSB>
      <CategoryContainerSSB>
        {needs.map((obj, i) => 
          <AmenitySSB key={i}>
            <NameWrapperSSB>{obj.name}</NameWrapperSSB>
            <ImgSSB src={obj.photoUrl}></ImgSSB>
          </AmenitySSB>
        )}
      </CategoryContainerSSB>
    </ContainerSSB>
  );
};



export default ModalComp;