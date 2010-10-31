rvm = ask("Would you like to configure gemset into RVM - ree1.8.7? [Y,n]")

if rvm.blank? || rvm.downcase == "y"
  file '.rvmrc', <<-RVMRC
  rvm gemset use #{app_name}
  RVMRC

  run "rvm gemset create #{app_name}"
  run "rvm gemset use #{app_name}"
  commit "Gemset #{app_name} with RVM ree1.8.7"

  say("Bundle install require a few minutes and internet connection", :blue)
  run "rvm ree-1.8.7@#{app_name} gem install bundler"
  run "rvm ree-1.8.7@#{app_name} -S bundle install"
  commit "Install gems with bundle"
else
  run "gem install bundler"
  run "bundle install"
  commit "Install gems with bundle"
end

