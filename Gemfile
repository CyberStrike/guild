source 'https://rubygems.org'

ruby '2.3.1'
gem 'rails', '5.0.1'

# Libraries
####################

gem 'sidekiq'
gem 'devise'
gem 'puma' # That's one fast cat
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Timey Wimey Stuff

## View Libraries
####################
gem 'sass-rails' # Sassy CSS
gem 'uglifier' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails' # Caffeineated JS
gem 'turbolinks'  # Turbo Charged Page Changes
gem 'jbuilder'
gem 'bootstrap', '~> 4.0.0.alpha6' # Pull our selves up by our Bootstraps
gem 'jquery-rails' # Javascript Query Library
gem 'slim-rails' # Lose some weight
gem 'redcarpet' # Laying it down for the Markdown

group :development, :test do
  gem 'sqlite3' # SQLite3 DB
  gem 'rspec-rails' # Great Expectations
  gem 'capybara' # Feature Testing
  gem 'factory_girl_rails' # Assembly The Testing Models
  gem 'faker' # Random Fake Info
  gem 'shoulda-matchers' # Model Testing Help for Rspec
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'pry-byebug', platform: :mri # Break in console
  gem 'pry-rails'
  gem 'awesome_print'
  gem 'rubocop'
end

group :development do
  gem 'listen'
  gem 'spring' # Make The App Springy
  gem 'spring-watcher-listen' # Watch The Springy App
  gem 'better_errors' # Better Errors
  gem 'binding_of_caller' # Better Debugging
  # gem 'quiet_assets' # Shhh.. we don't need to see the assets
end

group :production do
  gem 'pg' # Postgresql DB
  # Use Redis adapter to run Action Cable in production
  # gem 'redis', '~> 3.0'
  gem 'postmark-rails', '>= 0.10.0'
  gem 'rails_12factor' # Heroku asset handler
  gem 'heroku-deflater' # Enable GZip on heroku
end
