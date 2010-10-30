run "rm -Rf .gitignore README public/index.html public/javascripts/* test app/views/layouts/*"

gem "haml-rails", ">= 0.2"
gem 'inherited_resources', '>=1.1.2'
gem 'will_paginate', '>=3.0.pre2'
gem 'devise', '>=1.1.2'
gem "formtastic", '>=1.1.0'
gem 'friendly_id', '~>3.0'
gem "compass", ">= 0.10.5"

gem "metric_fu", ">=1.5.1", :group => :development

gem 'rspec', '>=2.0.0.rc', :group => :test
gem 'rspec-rails', '>=2.0.0.rc', :group => [:development, :test]
gem 'remarkable', '>=4.0.0.alpha4', :group => :test
gem 'remarkable_activemodel', '>=4.0.0.alpha4', :group => :test
gem 'remarkable_activerecord', '>=4.0.0.alpha4', :group => :test
gem "factory_girl_rails"

gem 'cucumber', ">=0.6.3", :group => :cucumber
gem 'cucumber-rails', ">=0.3.2", :group => :cucumber
gem 'capybara', ">=0.3.6", :group => :cucumber
gem 'database_cleaner', ">=0.5.0", :group => :cucumber
gem 'spork', ">=0.8.4", :group => :cucumber
gem "pickle", ">=0.4.2", :group => :cucumber

gem 'rails3-generators', :git => "git://github.com/indirect/rails3-generators.git"

run "bundle install"

application  <<-GENERATORS 
config.generators do |g|
  g.template_engine :haml
  g.test_framework  :rspec, :fixture => true, :views => false
  g.integration_tool :rspec, :fixture => true, :views => true
  g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
end
GENERATORS

generate "rspec:install"
generate "cucumber:install --capybara --rspec --spork"
generate "pickle --path --email"
generate "friendly_id"
generate "formtastic:install"
generate "devise:install"
generate "devise User"
generate "devise Admin"
run "gem install compass"
run "compass init --using blueprint --app rails --css-dir public/stylesheets"

run "rm public/stylesheets/*"

@core_path = "http://github.com/mauriciodeamorim/rails3_template/raw/master/core"
get "#{@core_path}/gitignore" ,".gitignore" 
get "#{@core_path}/factory_girl.rb", "features/support/factory_girl.rb"
get "#{@core_path}/devise_steps.rb", "features/step_definitions/devise_steps.rb"
get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"

git :init
git :add => '.'
git :commit => '-am "Initial commit"'
 
