#@core_path = "~/projetos/dev/rails3_template/thor"
@core_path = "http://github.com/mauriciodeamorim/rails3_template/raw/master/thor"

get "#{@core_path}/spine.rb" ,"spine.rb" 

run "thor install spine.rb --as --force"
say('Thor configuration', :blue)
run "thor spine:gemfile"
say('Configuration done!', :blue)
