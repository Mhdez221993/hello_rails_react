const apiFetchGreeting = async () => {
  const response = await fetch('api/greetings')
  return response.json()
}

export default apiFetchGreeting
