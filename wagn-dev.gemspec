# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wagn/dev/version'

Gem::Specification.new do |spec|
  spec.name          = "wagn-dev"
  spec.version       = Wagn::Dev::VERSION
  spec.authors       = ["Ethan McCutchen"]
  spec.email         = ["ethan@grasscommons.org"]
  spec.description   = %q{ support gem for developing Wagn mods }
  spec.summary       = %q{ support gem for developing Wagn mods }
  spec.homepage      = "http://wagn.org"
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
#  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
#  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  [
#   [ 'sass-rails',         '~> 3.1' ],  # pretty code; compiles to CSS
    [ 'coffee-rails',       '~> 3.1' ],  # pretty code; compiles to JS
    [ 'uglifier',           '~> 2.4' ],  # makes pretty code ugly again.  compresses js/css for fast loading
                                         
    [ 'jquery-rails',       '~> 2.3' ],  # main js framework, along with rails-specific unobtrusive lib
    [ 'jquery_mobile_rails','~> 1.4' ],  
                                         
    [ 'tinymce-rails',      '~> 3.4' ],  # wysiwyg editor
                                         
                                         
    [ 'rails-dev-tweaks',   '~> 0.6' ],  # dramatic speeds up asset loading, among other tweaks
    [ 'rspec-rails',        '~> 2.6' ]   # behavior-driven-development suite
  
  
  ].each do |dep|
    spec.add_dependency *dep
  end

  spec.add_development_dependency "bundler", '~> 1.3'
  spec.add_development_dependency "rake",    '~> 10.1'
end
