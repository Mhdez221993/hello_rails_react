import PropTypes from "prop-types";
import React from "react";
class Greetings extends React.Component {
  render() {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
        <h1>Hello from greeting</h1>
      </React.Fragment>
    );
  }
}

Greetings.propTypes = {
  greeting: PropTypes.string
};
export default Greetings
