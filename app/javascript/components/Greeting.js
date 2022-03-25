import React, { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { loadGreeting } from "../redux/greetings/index";
const Greeting = () => {
  const dispatch = useDispatch()
  const message = useSelector((state) => state.rootReducer)

  useEffect(() => {
    dispatch(loadGreeting())
  }, [])

  console.log(message);
  return <h1>Greeting: {message.greeting}</h1>
}

export default Greeting
