import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';

import ModalComp from './modalComp.jsx';



const ModalBodyContainer = styled.div`
  display: ${props => props.show ? "block" : "none"};
  position: absolute;
  top: 0px;
  right: 0px;
  bottom: 0px;
  left: 0px;
  width: 100%;
  height: 100%;
  z-index: 9998;
  background: rgb(255, 255, 255)
`;

const FlexContainer = styled.div`
  display: flex;
  justify-content: center;
`;

const ModalContainer = styled.div`
  position: absolute;
  width: 664px;
  top: 64px;
  bottom: 0px;
`;

const TopBar = styled.div`
  height: 64px;
  width: 100%;
  position: fixed;
  border-bottom: 1px solid rgb(228, 228, 228);
`;

const BackButton = styled.button`
  cursor: pointer;
  background-color: transparent;
  color: buttontext;
  display: block;
  border-width: 0px;
  border-style: initial;
  border-color: initial;
  border-image: initial;
  padding-left: 1em;
  padding-top: 1.5em;
`;

const BackButtonImg = styled.svg`
  height: 22px;
  width: 22px;
  display: block;
  fill: rgb(72, 72, 72);
`;

const ModalBody = ({hideModal, show, amenities, needs, special}) => {


  return (
    <ModalBodyContainer show={show}>
      <FlexContainer>
        <TopBar>
          <BackButton onClick={hideModal}>
            <BackButtonImg>
              <path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z"></path>
            </BackButtonImg>
          </BackButton>
        </TopBar>
        <ModalContainer>
          <ModalComp needs={needs} special={special}></ModalComp>
        </ModalContainer>
      </FlexContainer>
    </ModalBodyContainer>
  );
};

export default ModalBody;