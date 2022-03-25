import { applyMiddleware, combineReducers, createStore } from 'redux';
import logger from 'redux-logger';
import thunk from 'redux-thunk';
import rootReducer from './greetings';

const reducer = combineReducers({
  rootReducer,
});

const store = createStore(
  reducer,
  applyMiddleware(thunk, logger),
);

export default store
