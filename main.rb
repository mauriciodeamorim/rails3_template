@core_path = "http://github.com/mauriciodeamorim/rails3_template/raw/master/core"

def commit(message)
  git :add => "."
  git :commit => "-am '#{message}'"
end

git :init
commit "Generate Rails structure"

apply "#{@core_path}/clean_up.rb"
commit "Delete unused files"

apply "#{@core_path}/gemfile.rb"
commit "Include new Gemfile"

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


get "#{@core_path}/gitignore" ,".gitignore" 
get "#{@core_path}/factory_girl.rb", "features/support/factory_girl.rb"
get "#{@core_path}/devise_steps.rb", "features/step_definitions/devise_steps.rb"
get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"

git :init
git :add => '.'
git :commit => '-am "Initial commit"'
 
