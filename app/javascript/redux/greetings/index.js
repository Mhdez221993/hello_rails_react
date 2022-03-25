import apiFetchGreeting from './api'

const GREEETING_MESSAGES = 'greeting/message'

const initialState = {
  message: null
}

const setGreeting = payload => ({
  type: GREEETING_MESSAGES,
  payload
})

export const loadGreeting = () => async dispatch => {
  const data = await apiFetchGreeting()
  dispatch(setGreeting(data))
}

const rootReducer = (state = initialState, action) => {
  switch (action.type) {
    case GREEETING_MESSAGES:
      return action.payload
    default:
      return state
  }
}


export default rootReducer
