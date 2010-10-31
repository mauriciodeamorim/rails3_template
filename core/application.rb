application <<-GENERATORS
  config.generators do |g|
      g.test_framework :rspec, :fixture => true
      g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
    end
GENERATORS

