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

apply "#{@core_path}/application.rb"
commit "Config tests framework into application file"

apply "#{@core_path}/rvm.rb"

apply "#{@core_path}/generators.rb"

#get "#{@core_path}/gitignore" ,".gitignore" 
#get "#{@core_path}/factory_girl.rb", "features/support/factory_girl.rb"
#get "#{@core_path}/devise_steps.rb", "features/step_definitions/devise_steps.rb"
#get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"

