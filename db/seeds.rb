message = ['Hello', 'Hola', 'Ciao', 'Hallo', 'Salut']


5.times do |i|
  Greeting.create message: message[i]
end

