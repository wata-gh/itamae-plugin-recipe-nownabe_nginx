# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/nownabe_nginx/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-nownabe_nginx"
  spec.version       = Itamae::Plugin::Recipe::NownabeNginx::VERSION
  spec.authors       = ["nownabe"]
  spec.email         = ["nownabe@gmail.com"]
  spec.summary       = %q{A Nginx Itamae plugin.}
  spec.homepage      = "https://github.com/nownabe-infra/itamae-plugin-recipe-nownabe_nginx"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae", "~> 1.5"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "serverspec", "~> 2.7.1"
end
