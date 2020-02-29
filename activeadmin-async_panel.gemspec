# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_admin/async_panel/version'

Gem::Specification.new do |gem|
  gem.name          = 'activeadmin-async_panel'
  gem.version       = ActiveAdmin::AsyncPanel::VERSION
  gem.authors       = ['Alex Emelyanov']
  gem.email         = ['aemelyanov@spbtv.com']

  gem.summary       = 'AJAX-powered async panels for ActiveAdmin'
  gem.description   = 'Allows to define special attributes for ActiveAdmin panel to make it AJAX loadable and auto-updatable'
  gem.homepage      = 'https://github.com/holyketzer/activeadmin-async_panel'
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir        = 'exe'
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency 'activeadmin', '>= 1.0'
  gem.add_dependency 'coffee-rails', '>= 4.1'
  gem.add_development_dependency 'bundler', '~> 1.10'
  gem.add_development_dependency 'rake', '~> 13.0'
  gem.add_development_dependency 'rspec', '~> 3.3', '>= 3.3.0'
  gem.add_development_dependency 'rspec-rails', '~> 3.3'
  gem.add_development_dependency 'factory_girl_rails'
  gem.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.11'
  gem.add_development_dependency 'temping', '~> 3.3', '>= 3.3.0'
  gem.add_development_dependency 'codeclimate-test-reporter', '~> 0.4'
  gem.add_development_dependency 'capybara', '~> 2.1'
  gem.add_development_dependency 'phantomjs', '~> 2.1.1'
  gem.add_development_dependency 'poltergeist', '~> 1.10.0'
  gem.add_development_dependency 'database_cleaner', '~> 1.5.0'
  gem.add_development_dependency 'launchy', '~> 2.4.3'
  gem.add_development_dependency 'jquery-ui-rails', '~> 5.0.5'
end
