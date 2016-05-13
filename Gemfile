source 'https://rubygems.org'

ruby '2.3.1'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'

# Libraries
####################

gem 'puma', '~> 3.0' # That's one fast cat
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

## View Libraries
####################
gem 'sass-rails', '~> 5.0' # Sassy CSS
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0' # Caffeineated JS
gem 'turbolinks', '~> 5.x' # Turbo Charged Page Changes
gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass' # Pull our selves up by our Bootstraps
gem 'jquery-rails' # Javascript Query Library
gem 'slim-rails' # Lose some weight

group :development, :test do
  gem 'sqlite3' # SQLite3 DB
  gem 'rspec-rails' # Test Helper
  gem 'capybara' # Feature Testing
  gem 'factory_girl_rails' # Assembly The Testing Models
  gem 'ffaker' # Random Fake Info
  gem 'shoulda-matchers' # Model Testing Help for Rspec
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'pry-byebug', platform: :mri # Break in console
  gem 'pry-rails'
  gem 'awesome_print'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring' # Make The App Springy
  gem 'spring-watcher-listen', '~> 2.0.0' # Watch The Springy App
  gem 'better_errors' # Better Errors
  gem 'binding_of_caller' # Better Debugging
  gem 'quiet_assets' # Shhh.. we don't need to see the assets
end

group :production do
  gem 'pg' # Postgresql DB
  # Use Redis adapter to run Action Cable in production
  # gem 'redis', '~> 3.0'
  gem 'rails_12factor' # Heroku asset handler
end