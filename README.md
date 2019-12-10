# QWOP AI

Repo to make an algorithm learn how to play the [QWOP game](http://www.foddy.net/Athletics.html). Work in progress. The algorithm already accomplished to finish the run but its very slow and shitty.
![QWOP-algorithm](https://user-images.githubusercontent.com/44790691/70528993-ccc43b00-1b4f-11ea-991d-dfbf28e70132.png)

### Evolution
Idea is to make an evolutionary algorithm
- a keypress pattern represents an individual of a population
- fitness function is the score/time
- random starting point -> mutation and reproduction to increase fitness

### Problems to solve
- [x] control the keyboard remotely (done in `ruby` with [selenium-webdriver gem](https://rubygems.org/gems/selenium-webdriver/versions/3.142.6))
- [ ] get game data (current score being the most important one)
  - capture screenshot and use image processing to get text data
  - copy game as described [here](https://github.com/qema/qwop-ai/issues/1)
- [ ] design gene structure (parameters modifyable by algorithm)
  - length of pattern
  - keypresses
  - pause inbetween the keypresses

### Files
- **`run.rb`**: main file which runs the chrome webdriver and executes the keypresses
- **`screenshot.rb`**: snippet on how to make a screenshot (to capture score -> image processing?)

### Running the Script
you need to have installed **ruby** as well as **chrome webdriver**, **chrome browser** itself and the **selenium-webdriver** gem.

