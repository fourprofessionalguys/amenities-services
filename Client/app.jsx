import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      listingName: '',
      listingId: 77,
    };
  }

  handleQuery () {
    $.ajax({
      type: 'POST',
      url: '/api',
      data: JSON.stringify(this.state),
      contentType: 'application/json',
      success: (data) => {
        console.log(data);
      }
    });
  }

  render() {
    return (
      <div>
        <h1>HEY</h1>
          <button onClick={() => this.handleQuery()}>HEY</button>
      </div>
    );
  }
}
ReactDOM.render(<App />, document.getElementById('app'));