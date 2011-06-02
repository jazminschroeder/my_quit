source 'http://rubygems.org'

gem 'rails', '3.0.7'

gem 'mysql2', '~> 0.2.0'

#haml
gem 'haml-rails'
gem "compass", ">= 0.11.1"

#javascript
gem 'jquery-rails'

#authentication
gem 'devise'

group :development, :test do
  gem 'rspec-rails'
end

group :development do
  gem "wirble"
  gem "hirb"
  gem "awesome_print"
end

platforms :ruby_18 do
  gem 'ruby-debug'
end 

platforms :ruby_19 do
  gem 'ruby-debug19'
end

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :test do
  gem 'autotest'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'mocha'
end
