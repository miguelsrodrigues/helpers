########
# GEMS #
########


# Use mysql as the database for Active Record
gem 'mysql2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# use haml instead of html
gem 'haml'
# Haml-rails provides Haml generators for Rails 
gem 'haml-rails', '~> 0.5.3'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use unicorn as the app server
gem 'unicorn'
# Use Capistrano for deployment
gem 'capistrano'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# use Bootstrap with Sass
gem 'bootstrap-sass', '~> 3.2.0'
# add browser vendor prefixes automatically
gem 'autoprefixer-rails'
# bootstrap-sass extras, idea and codes from twitter-bootstrap-rails
gem 'bootstrap-sass-extras'

# Devise authentication
gem 'devise', '~> 3.4.1'
# Simple authorization solution for Rails which is decoupled from user roles. All permissions are stored in a single location
gem 'cancan', '~> 1.6.10'

# Forms made easy
gem 'simple_form', '~> 3.0.2'
# Unobtrusive nested forms handling, using jQuery
gem 'cocoon', '~> 1.2.6'
# Provides a simple helper to get an HTML select list of countries
gem 'country_select', '~> 2.1.0'
# A date and time picker for Twitter Bootstrap in Rails using Simple Form
gem 'datetimepicker-rails', :git => 'git://github.com/zpaulovics/datetimepicker-rails.git', :branch => 'master', :submodules => true
gem 'momentjs-rails', '>= 2.8.1', :github => 'derekprior/momentjs-rails'

# New Relic is a performance management system
gem 'newrelic_rpm', '~> 3.9.7.266'
# notifier gem, when an uncaught exception occurs, Airbrake will POST the relevant data to the Airbrake server specified in your environment
gem 'airbrake'

# pagination
gem 'kaminari', '~> 0.16.1'
# Maps controller filters to your resource scopes
gem 'has_scope', '~> 0.5.1'

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'

  # Use debugger
  gem 'debugger', '~> 1.6.8'

  # Is a testing framework
  gem 'rspec-rails', '~> 3.1.0'
  # Is a fixtures replacement
  gem 'factory_girl_rails', '~> 4.5.0'
  # Making tests easy on the fingers and eyes
  gem 'shoulda-matchers', '~> 2.7.0'
  # # Guard::RSpec automatically run your specs (much like autotest)
  gem 'guard-rspec', '~> 4.3.1'
  # Automatically reloads your browser when 'view' files are modified.
  gem 'guard-livereload', '~> 2.4.0'
  # testing: it simulates how a user would interact with a website
  gem 'capybara', '~> 2.4.4'
  # Supporting gem for Rails Panel (Google Chrome extension for Rails development)
  gem 'meta_request', '~> 0.3.4'

  # Loads environment variables from `.env`.
  gem 'dotenv-rails', '~> 1.0.2'
  # Preview mail in the browser instead of sending.
  gem 'letter_opener', '~> 1.2.0'
   # Provides a better error page for Rails
  gem 'better_errors', '~> 2.0.0'
  # allow use Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names)
  gem 'binding_of_caller', '~> 0.7.2'
  # Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure
  gem 'awesome_print', '~> 1.2.0'
  # help to kill N+1 queries and unused eager loading.
  gem 'bullet', '~> 4.14.0'
  # A thin and fast web server
  gem 'thin', '>= 1.6.2'
end

# Owl Carousel. Touch enabled jQuery plugin that lets you create beautiful responsive carousel slider.
gem 'owlcarousel-rails'
# Simple wrapper around the pHash library - compare multimedia files
gem 'phashion', '~> 1.1.1'