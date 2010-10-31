generators = ask("Run generators? [Y,n] ")
if generators.blank? || generators.downcase == "y"
  run "rvm ree-1.8.7@#{app_name} -S rails g rspec:install"
  commit "Rspec files and configurations"
  
  run "rvm ree-1.8.7@#{app_name} -S rails g cucumber:install --capybara --rspec --spork"
  commit "Cucumber files and configurations"
  
  run "rvm ree-1.8.7@#{app_name} -S rails g pickle --path --email"
  commit "Pickle files and configurations"
  
  run "rvm ree-1.8.7@#{app_name} -S rails g devise:install"
  commit "Devise files and configurations"
  
  run "rvm ree-1.8.7@#{app_name} -S rails g devise User"
  commit "Create user with Devise"
  
  run "rvm ree-1.8.7@#{app_name} -S rails g devise Admin"
  commit "Create admin with Devise"
  
  run "rvm ree-1.8.7@#{app_name} -S rails g devise:views"
  commit "Create Devise views"
end

