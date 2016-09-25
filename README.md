Instructions:

1.  Clone the repository from Github:
````git clone git@github.com:derekcroft/zoomer.git````
2.  Get bundler gem: 
````gem install bundler````
3.  Install the bundle:
````bundle install````
4.  To run the specs:
````bundle exec rspec````
5.  To run the code from the command line:
````bin/reverse "the big black cat."````
6.  To reverse a sentence in code:
````
require_relative 'sentence'

sentence = Sentence.new("the big black cat.")
puts sentence.reverse
````
