import React from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Greetings from "./Greetings";

class App extends React.Component {
  render() {
    return (
      <Router>
        <Routes>
          <Route exact path="/" element={<Greetings />} />
        </Routes>
      </Router>
    );
  }
}

export default App
