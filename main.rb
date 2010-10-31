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

apply "#{@core_path}/files.rb"
commit "Get files"

run "rake db:migrate"

