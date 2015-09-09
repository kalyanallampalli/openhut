source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.1.5'

gem 'rails', '4.2.3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'therubyracer', :platform => :ruby

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use unicorn as the app server
gem 'puma'

# Use debugger
# gem 'debugger', group: [:development, :test]
group :development do
  gem 'pry-rails'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  # Use postgresql as the database for Active Record
	gem 'mysql2', '0.3.20'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

# Gems needed only during unit testing.
group :development, :test, :rspec do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'rails-erd'
  gem 'faker'
end

gem "zomato"
gem 'geocoder'
gem 'haml'