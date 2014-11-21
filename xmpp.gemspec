# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xmpp/version'

Gem::Specification.new do |spec|
  spec.name          = 'xmpp'
  spec.version       = XMPP::VERSION
  spec.authors       = ['Jimmy Cuadra']
  spec.email         = ['jimmy@jimmycuadra.com']
  spec.summary       = %q{An XMPP library.}
  spec.description   = %q{An XMPP library offering both a client and a server.}
  spec.homepage      = 'https://github.com/jimmycuadra/xmpp'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = ">= 2.1.0"

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
