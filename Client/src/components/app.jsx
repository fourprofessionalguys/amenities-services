import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';
import styled, {createGlobalStyle} from 'styled-components';

const GlobalStyle = createGlobalStyle`
  body {
    font-family: 'Roboto', Helvetica Neue, sans-serif;
    font-size: 14px;
    color: #484848;
    line-height: 1.43;
  }
  `;

const PageContainer = styled.div`
  width: 1265px;
  margin: auto auto 3rem auto;
`;

const AmenitiesTitle = styled.h1`
  font-weight: 800;
  font-size: 36px;
  line-height: 40px;
`;

const AmenitiesDescription = styled.h4`
  font-weight: 400;
  font-size: 16px;
  line-height: 1.375em;
  word-wrap: break-word
`;

const Img = styled.div`
  background-image: ${props => `url('${props.photo}')`};
  background-size: 100% 100%;
  background-repeat: no-repeat;
  height: 210px;
  width: 250px;
`;

const ImgWrapper = styled.div`
  height: 250px;
  width: 250px;
  text-align: center;
`;

const ImgDescription = styled.p`
  font-size: 16px;
  font-weight: 400;
`;

const Button = styled.button`
  text-decoration-line: var(--font-link-text-decoration-line, none);
  color: var(--color-brand-plus, #914669);
  background: transparent;
  border: 0px;
  cursor: pointer;
  margin: 0px;
  padding: 0px;
  user-select: auto;
  text-align: left;
`;

const ButtonWrapper = styled.div`
margin: 0px;
word-wrap: break-word;
font-size: 16px;
font-weight: 600;
line-height: 1.375em;
color: #484848
`;

const Amenity = ({photo, name}) => {
  return (
    <ImgWrapper className="col-2">
      <Img photo={photo} className="img-fluid image"/>
      <ImgDescription className="description">{name}</ImgDescription>
    </ImgWrapper>
  );
};

const AmenitiesRow = ({amenities}) => {
  return (
    <div className="row pt-3 amenitiesList">
      {amenities.map((amenity, i) => 
        <Amenity photo={amenity.photoUrl} name={amenity.name} key={i}/>
      )}
    </div>
  );
};

export default class App extends React.Component {
  constructor(props) {
    super(props);
    const randy = Math.floor(Math.random() * 100) + 1;
    this.state = {
      listingName: '',
      listingId: randy,
      amenities: [],
    };
  }

  componentDidMount () {
    $.ajax({
      type: 'POST',
      url: '/api',
      data: JSON.stringify(this.state),
      contentType: 'application/json',
      success: (data) => {
        this.setState({
          amenities: data,
        });
      }
    });
  }


  render() {
    return (
      <div>
        <GlobalStyle />
        <PageContainer>
          <AmenitiesTitle>Amenities</AmenitiesTitle>
          <AmenitiesDescription>These amenities are available to you.</AmenitiesDescription>
          <div className="py-4">
            <AmenitiesRow id="row1" amenities={this.state.amenities.slice(0, 6)}/>
            <AmenitiesRow id="row2" amenities={this.state.amenities.slice(6, 12)} />
          </div>
          <ButtonWrapper>
            <Button id="button">Show all {this.state.amenities.length} amenities</Button>
          </ButtonWrapper>
        </PageContainer>
      </div>
    );
  }
}

export {
  Amenity,
  AmenitiesRow
};
