@core_path = "http://github.com/mauriciodeamorim/rails3_template/raw/master/core"

get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "public/javascripts/rails.js"
get "http://code.jquery.com/jquery-1.4.2.min.js", "public/javascripts/jquery/jquery-1.4.2.min.js"
get "#{@core_path}/gitignore" ,".gitignore" 
get "#{@core_path}/factory_girl.rb", "features/support/factory_girl.rb"
get "#{@core_path}/devise_steps.rb", "features/step_definitions/devise_steps.rb"

