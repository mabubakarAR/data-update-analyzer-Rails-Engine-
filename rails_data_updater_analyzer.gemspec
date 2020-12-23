require File.expand_path('lib/rails_data_updater_analyzer/version', __dir__)

Gem::Specification.new do |spec|
    spec.name                  = 'rails_data_updater_analyzer'
    spec.version               = RailsDataUpdaterAnalyzer::VERSION
    spec.authors               = ['Abu bakar']
    spec.homepage              = ""
    spec.summary               = 'DataUpdaterAnalyzer integration for Ruby on Rails'
    spec.description           = 'This gem allows the user to upload the data in csv form, retrieve and store it in database'
    spec.license               = 'MIT'
    spec.platform              = Gem::Platform::RUBY
    spec.required_ruby_version = '>= 2.5.0'
    spec.require_paths = ["lib"]
    spec.files = Dir['lib/**/*.rb', 'lib/**/*.rake', 'rails_data_updater_analyzer.gemspec', 'Gemfile', 'Rakefile']

end