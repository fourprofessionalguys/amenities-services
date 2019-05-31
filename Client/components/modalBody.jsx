import React from 'react';
import styled, {createGlobalStyle} from 'styled-components';
import '../main.scss';
import ModalComp from './modalComp.jsx';



const ModalBodyContainer = styled.div`
  &&&&& {
    display: ${props => props.show ? "block" : "none"};
  }
`;

const ModalBody = ({hideModal, show, amenities, needs, special}) => {
  return (
    <ModalBodyContainer id="ModalBodyContainer" show={show}>
      <div id="FlexContainer">
        <div id="TopBar">
          <button id="BackButton" onClick={hideModal}>
            <svg id="BackButtonImg">
              <path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z"></path>
            </svg>
          </button>
        </div>
        <div id="ModalContainer">
          <ModalComp needs={needs} special={special}></ModalComp>
        </div>
      </div>
    </ModalBodyContainer>
  );
};

export default ModalBody;