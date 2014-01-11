# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'working_hours/version'

Gem::Specification.new do |spec|
  spec.name          = "working_hours"
  spec.version       = WorkingHours::VERSION
  spec.authors       = ["Jon Grimes"]
  spec.email         = ["jonkgrimes@gmail.com"]
  spec.description   = %q{Convenience methods and initializers for setting 
    and getting hours of operation for a business for a Rails app.}
  spec.summary       = %q{Easy way to get the working hours of a business in
    a Rails app}
  spec.homepage      = "http://github.com/jonkgrimes/working_hours"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
