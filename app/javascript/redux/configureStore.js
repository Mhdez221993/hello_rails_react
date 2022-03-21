import { applyMiddleware, combineReducers, createStore } from "redux";
import thunk from "redux-thunk";
import greetingsReducer from "./greetings/index";

const reducer = combineReducers({
  greetings: greetingsReducer,
});

const store = createStore(reducer, applyMiddleware(thunk));

export default store;
