class Spine < Thor
  include Thor::Actions
  
  desc "gemfile", "Create Gemfile"
  def gemfile
    create_file 'Gemfile', <<-GEMFILE
      gem 'rails', '3.0.1'
      gem 'rails3-generators'
    GEMFILE
  end
end
