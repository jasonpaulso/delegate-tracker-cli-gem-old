# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delegate_tracker/version'
require 'nokogiri'
require 'open-uri'

Gem::Specification.new do |spec|
  spec.name          = "delegate_tracker"
  spec.version       = DelegateTracker::VERSION
  spec.authors       = ["jasonpaulso"]
  spec.email         = ["hello@jasonpaulsouthwell.com"]

  spec.summary       = %q{A gem to connect Politico's Delegate Count Tracker to the CL.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/jasonpaulso/delegate-tracker-cli-gem.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = ["bin"]
  spec.executables   = ["delegate-tracker"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "nokogiri"
end
