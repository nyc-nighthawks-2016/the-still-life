source 'https://rubygems.org'

gem 'rails_12factor', group: :production
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7'
gem 'react-rails'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'puma', group: :production
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'pg_search'
gem 'bootstrap-sass'
gem 'bootstrap_form'
gem 'font-awesome-sass', '~> 4.5.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'carrierwave', '0.11.2'
gem 'mini_magick', '4.5.1'
gem 'fog', '1.38.0'
gem 'will_paginate', '3.1.0'
gem 'bootstrap-will_paginate', '0.0.10'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'faker'
gem 'pry'
gem 'rails-pry'
gem 'better_errors', '~> 2.1', '>= 2.1.1'

# Use delayed job for running background jobs
gem 'delayed_job_active_record'
gem 'delayed_job'

#File Uploading
gem 'paperclip'
gem 'aws-s3', '~> 0.6.3'
gem 'aws-sdk', '~> 2.5', '>= 2.5.1'


# Need daemons to start delayed_job
gem 'daemons'

# Use workless to use less workers on heroku
gem "workless", "~> 1.2.2"

# Use Twilio
gem 'twilio-ruby'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'capybara', "~> 2.5"
  gem 'launchy'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
