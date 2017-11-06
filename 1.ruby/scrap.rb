
require 'httparty'
require 'nokogiri'

url = "http://http://finance.naver.com/sise/"
response = HTTParty.get(url)  #HTTParty를 통해 url 에 
text = Nokogiri::HTML(response.body)
#Nokogiri::XML 
kospi = text.css('#KOSPI_now')

puts kospi.text

#