$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "casum/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "casum"
  s.version     = Casum::VERSION
  s.authors     = ["Nhut Thai Le"]
  s.email       = ["lnthai2002@yahoo.com"]
  s.homepage    = "http://darkportal.no-ip.info/pas/casum"
  s.summary     = "Manage users for CAS on Darkportal"
  s.description = "Manage users for CAS on Darkportal"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency 'mysql2'
  s.add_dependency 'rubycas-client'
  s.add_dependency 'haml-rails'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'sass-rails'
  s.add_dependency 'foundation-rails'             #foundation UI framework
  s.add_dependency 'remotipart'                   #allow submit ajax form with multipart
  s.add_dependency 'dynamic_form'
  s.add_dependency 'cancan'
  s.add_development_dependency 'rspec-rails'
  #s.add_development_dependency 'capybara'        #not used yet
  s.add_development_dependency 'factory_girl_rails'
end
