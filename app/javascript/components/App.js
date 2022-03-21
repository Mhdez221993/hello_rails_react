import React from "react";
import { Provider } from "react-redux";
import { BrowserRouter as Router, Link, Route, Routes } from "react-router-dom";
import store from "../redux/configureStore";
import Greetings from "./Greetings";

const App = () => (
  <Provider store={store}>
    <Router>
      <Routes>
        <Route path="/greeting" element={<Greetings />} />
        <Route
          path="/"
          element={<Link to="/greeting">Get random greeting</Link>}
        />
      </Routes>
    </Router>
  </Provider>
);


export default App
