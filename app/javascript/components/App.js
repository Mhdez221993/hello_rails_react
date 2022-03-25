import React from "react";
import { Provider } from 'react-redux';
import {
  BrowserRouter, Link, Route, Routes
} from "react-router-dom";
import store from '../redux/configureStore';
import Greeting from './Greeting';


const App = () => (
  <Provider store={store}>
    <BrowserRouter>
      <Routes>
        <Route exact path="/" element={<Link to='/greetings'>new greeting</Link>} />
        <Route path="/greetings" element={<Greeting />} />
      </Routes>
    </BrowserRouter>
  </Provider >
);

export default App
