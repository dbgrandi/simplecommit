source 'https://rubygems.org'
ruby "2.1.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use postgres as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'github-markdown'
gem 'gemoji'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Heroku integration
gem 'rails_12factor'

# Use unicorn as the app server
gem 'unicorn'

gem 'slim-rails'

gem "omniauth-github", '1.1.1'

gem 'resque'

gem 'octokit'

gem 'kaminari'

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard-rspec'
#  gem 'rb-fsevent' if `uname` =~ /Darwin/
end

group :test do
  # gem 'guard-livereload'
  # gem 'guard-rspec'
  # gem 'guard-rails'
  # gem 'guard-resque'

  gem 'database_cleaner', '1.3.0'

  # mocks and fake data
  gem 'fabrication'
  gem 'faker'

  # test DSLs
  # gem 'shoulda-matchers' , '~> 1.0.0'
  # gem 'capybara'

#  gem 'vcr'
#  gem 'webmock'          , '~> 1.7.6'
#  gem 'crack'            , '>=0.1.7'
end
