# encoding: utf-8

def self.add_to_path path
 path = File.expand_path "../#{path}/", __FILE__

 $:.unshift path unless $:.include? path
end

add_to_path 'lib'

require 'appium_lib/common/version'

Gem::Specification.new do |s|
  # 1.8.x is not supported
  s.required_ruby_version = '>= 1.9.3'

  s.name = 'appium_lib'
  s.version = Appium::VERSION
  s.date = Appium::DATE
  s.license = 'http://www.apache.org/licenses/LICENSE-2.0.txt'
  s.description = s.summary = 'Ruby library for Appium'
  s.description += '.' # avoid identical warning
  s.authors = s.email = [ 'code@bootstraponline.com' ]
  s.homepage = 'https://github.com/appium/ruby_lib' # published as appium_lib
  s.require_paths = [ 'lib' ]

  s.add_runtime_dependency 'selenium-webdriver', '~> 2.39.0'
  s.add_runtime_dependency 'awesome_print', '~> 1.2.0'
  s.add_runtime_dependency 'json', '~> 1.8.1'
  s.add_runtime_dependency 'toml', '~> 0.0.4'
  s.add_runtime_dependency 'posix-spawn', '~> 0.3.8'
  s.add_runtime_dependency 'webkit_remote', '~> 0.4.1'

  s.add_development_dependency 'rake', '~> 10.0.4'
  s.add_development_dependency 'yard', '~> 0.8.7.3'

  s.files = `git ls-files`.split "\n"
end
