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
  width: 1700px;
  margin-top: 72px 0px;
  margin-bottom: 72px 0px;
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
const Amenity = ({photo, name}) => {
  return (
    <ImgWrapper className="col-2">
      <Img photo={photo} className="img-fluid"/>
      <ImgDescription>{name}</ImgDescription>
    </ImgWrapper>
  );
};

const AmenitiesRow = ({amenities}) => {
  return (
    <div className="row pt-3">
      {amenities.map((amenity, i) => 
        <Amenity photo={amenity.photoUrl} name={amenity.name} key={i}/>
      )}
    </div>
  );
};

class App extends React.Component {
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
        <PageContainer className="container">
          <div className="pt-5">
            <AmenitiesTitle>Amenities</AmenitiesTitle>
            <AmenitiesDescription>These amenities are available to you.</AmenitiesDescription>
            <div className="pt-4">
              <AmenitiesRow amenities={this.state.amenities.slice(0, 6)}/>
              <AmenitiesRow amenities={this.state.amenities.slice(6, 12)} />
            </div>
          </div>
        </PageContainer>
      </div>
    );
  }
}
ReactDOM.render(<App />, document.getElementById('app'));