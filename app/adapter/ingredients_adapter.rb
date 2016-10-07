require 'rest-client'

puts RestClient.get('https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro=&explaintext=&titles=Asafoetida')
