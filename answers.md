# Q0: Why is this error being thrown?
We haven't created a pokemon model or table. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemon appear because in home_controller.rb, we use .sample to select a random Pokemon with no trainer. The common factor between all possible Pokemon is that none of them are assigned to a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This line creates a button on the home page that says "Throw a Pokeball!". capture_path tells you the path/method in pokemons_controller to route to (/pokemons/capture), amd patch tells us to update the pokemon.

# Question 3: What would you name your own Pokemon?
steve

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
Yes, I passed it trainer_path, which was created with resources :trainers. The path needed the id of the pokemon's trainer to know whos page to redirect to. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash stores temporary messages for the next action and creates an html div to show the message temporarily. 

# Give us feedback on the project and decal below!
It was fun!! The last two parts of this project were really difficult and syntax heavy, more direction would be helpful as this is the first project. I relied heavily on searching for documentation and asking friends who were already done, some links to resources or examples would make this much less frustrating. 

# Extra credit: Link your Heroku deployed app
