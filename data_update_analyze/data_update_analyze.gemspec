$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "data_update_analyze/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "data_update_analyze"
  spec.version     = DataUpdateAnalyze::VERSION
  spec.authors     = ["Abubakar"]
  spec.homepage    = "https://github.com/mrabubakar/rails_data_updater_analyzer_app"
  spec.summary     = "DataUpdaterAnalyzer integration for Ruby on Rails"
  spec.description = "This gem allows the user to upload the data in csv form, retrieve and store it in database"
  spec.license     = "MIT"
  spec.platform    = Gem::Platform::RUBY


  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.4", ">= 5.2.4.4"

  spec.add_development_dependency "sqlite3"
end
