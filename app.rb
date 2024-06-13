require 'nokogiri'
require 'net/http'
 
https = Net::HTTP.new('example.com', 443)
https.use_ssl = true
response = https.get("/")
 
file = Nokogiri::HTML(response.body)
p = file.at('p')
puts p.content