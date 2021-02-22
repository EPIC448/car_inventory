# Dealership Inventory Managment System

![Project Image](https://cdn-ds.com/media/websites/2918/content/Top_11.jpg?s=495996)

>A Ruby on Rails application that does basic inventory management for a new /used car inventory.

--- 

### Table of Contents
You're sections headers will be used to reference location of destination.

- [Description](#description)
- [How to use](#How-to-use)
- [License](#License)
- [References](#References)
- [Author](#Author)

---
## Description

>Inventory of cars are are located at a dealership, thus a user can log in and are prompted to create they own Dealership with a name and address.
> However, a user with an Admin can add, and delete inventory of cars and update dealership as needed

---
### Technologies

- Ruby version 3.0.0
- Visual Studio code
- Rubocop 
- Rspec - testing

---
### Installation

 ** System dependencies

```
gem 'devise'
gem 'nested_scaffold'
gem 'rubocop-rails', require: false
gem 'rspec-rails'
gem 'shoulda-matchers'
gem 'pg'
gem 'rails_12factor'
 
```
 * Configuration
 
 ```
 Prerequistes
  The setup expect the following on your system

 ruby  '3.0.0'
 rails, '~> 6.1.2', '>= 6.1.2.1'
 rspec-rails
 devise
```
---
### How To Use
 open up prefered code editior
 cd to the location you want to clone the project in your local machine  

 All command are to be executed in the terminal
 ```
 run command
  "git clone git@github.com:EPIC448/car_inventory.git"
```
cd in to the car_inventory in your code editior and run 
```
  run command `rails server` to start the server
 ```

 * How to run the test suite
To run test
 ```
 run command  "bundle exec rspec"
```
To run Ruby code style checker(linter ) and formatter based on commmity-driven guide
 ```
 run command  "rubocup"

To omit excluded file when using rubocup,

 run command "rubocop add --force-exclusion"
```

 To grant a regular user ADMIN features because only ADMIN can create and delete inventories

 ```
  make sure to log in as a regular user, then in your project terminal 

  run command "rails c" to jump into the rails console
  run command "User.first"  to ensure you have the correct user

   it should return something like: 

   "#<User id: 1, email: "bob@example.com", 
  created_at: "2021-02-12 18:39:27.791451000 +0000", updated_at: "2021-02-12 18:39:27.791451000 +0000", admin: false> " 
  
  Now we change the admin from false to true
   runcommand "@user = @user.admin = true "
   run command "@user.admin = true"
   run command "@user.save"
   
 ```
---

---
### Services (Heroku)

* Deployment instructions

 Assuming that you have an heroku account already else, go down to the heroku link to create one and follow the instruction on the heroku site.
```
Configure your Gemfile with

group :production do
# using the gem on heroku
 gem 'pg'
 gem 'rails_12factor'
end

run 'bundle install''

run 'heroku login'
heroku: Press any key to open up the browser to login or q to exit
 ›   Warning: If browser does not open, visit
 ›   https://cli-auth.heroku.com/auth/browser/***
heroku: Waiting for login...
Logging in... done
Logged in as me@example.co


Then run 'git clone git@github.com:EPIC448/car_inventory.git'

run 'heroku create'

run 'git push heroku main'

```


-  [Heroku deployment](https://tranquil-depths-24424.herokuapp.com/users/sign_in)
-  [Dealership Inventory repo](https://github.com/EPIC448/car_inventory/tree/main/car_inventory)


[Back To The Top](#Dealership-Inventory-Managment-System)

---
### References

- [How to clone project to local machine](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
- [Rubocop docs](https://rubocop.org/#:~:text=RuboCop%20is%20a%20Ruby%20code,community%2Ddriven%20Ruby%20Style%20Guide.)
- [Rspec docs](https://relishapp.com/rspec/rspec-rails/v/4-0/docs/)
- [Ruby docs](https://ruby-doc.org/)
- [Heroku docs](https://devcenter.heroku.com/articles/getting-started-with-ruby#deploy-the-app)


---
### License
Techuture.com License

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---

### Author Info

- Email: Samrey2018@gmail.com
- Website: http://techuture.com/samuel_o_resume.io/
- GitHub:  https://github.com/EPIC448  
- Blog:      http://techuture.com/    
- Linkedin: https://www.linkedin.com/in/samuel48/ 
---
 
[Back To The Top](#Dealership-Inventory-Managment-System)
