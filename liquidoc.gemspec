# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "liquidoc/version"

Gem::Specification.new do |spec|
  spec.name          = "liquidoc"
  spec.version       = Liquidoc::VERSION
  spec.authors       = ["Brian Dominick"]
  spec.email         = ["badominick@gmail.com"]
  spec.license       = "MIT"

  spec.summary       = %q{A highly configurable command-line tool for parsing data and content in common flat-file formats.}
  spec.description   = %q{LiquiDoc conveniently harnesses the power of Liquid templates, flat-file data formats such as YAML, JSON, XML, and CSV, as well as AsciiDoc markup and powerful Asciidoctor output capabilities -- all in a single command-line tool.}
  spec.homepage      = "https://github.com/scalingdata/liquidoc"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = spec.files = Dir['lib/**/*.rb']
  spec.bindir        = "bin"
  spec.executables   = ["liquidoc"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
