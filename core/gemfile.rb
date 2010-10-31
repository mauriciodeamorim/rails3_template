remove_file 'Gemfile'
create_file 'Gemfile', <<-GEMFILE
source 'http://rubygems.org'

gem 'devise', '>=1.1.2'
gem 'hpricot' # need to generate devise:views
gem 'inherited_resources', '>=1.1.2'
gem 'rails', '3.0.1'
gem 'rails3-generators'
gem 'ruby_parser' # need to generate devise:views
gem 'thin'
gem 'will_paginate', '>=3.0.pre2'

group :development, :test do
  gem 'capybara', ">=0.3.6"
  gem 'cucumber', ">=0.6.3"
  gem 'cucumber-rails', ">=0.3.2"
  gem "factory_girl_rails"
  gem "pickle", ">=0.4.2"
  gem "rspec", ">=2.0.0"
  gem "rspec-rails", ">=2.0.0"
  gem "ruby-debug"
  gem 'spork', ">=0.8.4"  
end
GEMFILE

#Others gems
#gem "haml-rails", ">= 0.2"
#gem "formtastic", '>=1.1.0'
#gem 'friendly_id', '~>3.0'
#gem "compass", ">= 0.10.5"

#gem "metric_fu", ">=1.5.1", :group => :development
#gem 'remarkable', '>=4.0.0.alpha4', :group => :test
#gem 'remarkable_activemodel', '>=4.0.0.alpha4', :group => :test
#gem 'remarkable_activerecord', '>=4.0.0.alpha4', :group => :test
#gem 'database_cleaner', ">=0.5.0", :group => :cucumber

