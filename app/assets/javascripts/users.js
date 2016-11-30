const React = require('react');
const ReactDOM = require('react-dom');

const Index = require('./users/index');

class User {
  static run(action) {
    if (action == "index") {
      ReactDOM.render(
        React.createElement(Index),
        document.querySelector('#index-component')
      )
    }
  }
}

module.exports = User;
