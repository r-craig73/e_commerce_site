# e_commerce_site (aka. Simpson's Action Figure Outlet)

### Description
#### An application for E-Commerce users to shop and order Simpson's action figures.  Using API, authentication, AJAX and other features.

#### Things to do
1. Add either featured or sale to products (boolean?)

### E-Commerce User stories
- [x] As a user, I should be able to add and remove items from my shopping cart.
- [ ] As a user, I'd like to see my shopping cart updated when I make changes.
- [ ] As a user, my shopping cart should be cleared once I've completed my order.
- [ ] As a user, I'd like to see the number of items in my shopping cart and the total cost of my order in the navbar (and not just on the shopping cart page).
- [ ] As a user, I'd like to be able to see which items are on sale, along with the percentage they've been discounted.
- [ ] As a user, I'd like to see if there are fewer than ten of an item in stock.

### Admin stories
- [x] As an admin, I should have full CRUD-L functionality to add products (as a user, not as an admin yet).
- [ ] As an admin, I'd like to be able to feature certain items by using a "featured" boolean.
- [ ] As an admin, I'd like to be able to easily mark an item as on sale. (Items could have a sale_price as well as a list_price.)


### Application instructions (assuming Mac OS)
* If you want to use Postgres for the database and not to install Rail's testing tools, create a file called `.railsrc` in your home directory (using the text editor of your choice) and add the line `-d postgresql -T`

* Clone the repository and direct your terminal into the home repository folder `Computer:steves_sock_shack user$`

* Run `$ gem install rails`

* Verify that you are using ruby-2.4.1 in your terminal(s).

* Run `$ bundle install` to install Ruby gems packages related to the Gemfile in the top level.

* Rspec setup (Unit Testing and Models): In the terminal, run the following command `$ bundle exec rails generate rspec:install`. Files will be generated in the spec folder.  In the home repository folder run `$ rspec` to view tests passing or failing.

* Database setup: Run `$ rake db:create` to generate a database. Run `$ rails generate migration action_name` generate a migration file for table manipulation. After generating the necessary tables, run `$ rake db:migrate` to prepare the database. Run `$ rake db:test:prepare` to create the Active Record schema.rb file.  To run a seed to populate a database, run `$ rake db:seed`.

* Rails server: Run `$ rails server` to start the Rails server.  Navigate to `http://localhost:3000`.  Refresh the page to reload any changes to the source files.

* Authentication setup: Add gem 'devise' to your Gemfile and bundle `$ bundle update`. Run `$ rails generate devise:install` to create additional files. Run `$ rails generate devise user` to create a migration file, model and spec model files and a route for users.  Run migration `$ rake db:migration` to update the database table. Run `$ rails generate devise:views` to automatically add views for registering and signing in. Finally, restart Rails server.

* System dependencies
* There are soooooo many Ruby gem dependencies. Here's a list of the dependencies used (coming soon).

Copyright (c) 2018 **_RC productions_**
