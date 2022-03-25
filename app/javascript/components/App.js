import React from "react";
import {
  BrowserRouter, Route, Routes
} from "react-router-dom";
import HelloWorld from './HelloWorld';

const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route exact path="/" element={<HelloWorld />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App
