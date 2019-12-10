require 'selenium-webdriver'
require 'pry-byebug'

driver = Selenium::WebDriver.for :chrome
driver.get("http://www.foddy.net/Athletics.html")
sleep 5 # wait for game to bea fully loaded
n = 0.1

puts "clicking the canvas to start the game"
driver.find_element(:css, "canvas").click # start the game
sleep 1

# CURRENT PATTERN USED (-> randomize and evolve)
# W-W-O-Q-P
while true
  puts "keypress W performed"
  driver.action.key_down("w").perform()
  sleep n/4
  driver.action.key_up("w").perform()
  sleep n

  puts "keypress W performed"
  driver.action.key_down("w").perform()
  sleep n/4
  driver.action.key_up("w").perform()
  sleep n

  puts "keypress O performed"
  driver.action.key_down("o").perform()
  sleep n/4
  driver.action.key_up("o").perform()
  sleep n

  puts "keypress Q performed"
  driver.action.key_down("q").perform()
  sleep n/4
  driver.action.key_up("q").perform()
  sleep n

  puts "keypress P performed"
  driver.action.key_down("p").perform()
  sleep n/4
  driver.action.key_up("p").perform()
  sleep n
end
