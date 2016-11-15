const React = require('react');
const ReactDOM = require('react-dom');

const Index = require('./users/index');

class User {
  static run(action) {
    if (action == "index") {
      ReactDOM.render(
        <Index />, document.querySelector('#greet')
      )
    }
  }
}

module.exports = User;
