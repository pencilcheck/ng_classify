$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ng_classify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ng_classify"
  s.version     = NgClassify::VERSION
  s.authors     = ["Penn Su"]
  s.email       = ["pennsu@gmail.com"]
  s.homepage    = ""
  s.summary     = "A preprocessor for the ng-classify npm module"
  s.description = "Convert CoffeeScript classes to AngularJS modules
Write less JavaScript. Write less CoffeeScript. Write less Angular."
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = Dir["test/**/*"]
  s.require_paths = ['lib']

  s.add_runtime_dependency 'therubyracer',  '~> 0.12', '>= 0.12.1'
  s.add_runtime_dependency 'commonjs',      '~> 0.2', '>= 0.2.7'
  s.add_runtime_dependency 'rails',         '>= 3.2', '< 5'
  s.add_runtime_dependency 'activesupport', '>= 3.0', '< 5'
  s.add_runtime_dependency 'actionpack',    '>= 3.0', '< 5'
  s.add_runtime_dependency 'railties',      '>= 3.0', '< 5'
end
