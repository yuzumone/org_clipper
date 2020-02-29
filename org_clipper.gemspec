
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "org_clipper/version"

Gem::Specification.new do |spec|
  spec.name          = "org_clipper"
  spec.version       = OrgClipper::VERSION
  spec.authors       = ["yuzumone"]
  spec.email         = ["yuzumone@outlook.com"]

  spec.summary       = "clip"
  spec.description   = "clip"
  spec.homepage      = "https://github/yuzumone/org_clipper"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "httpclient", "~> 2.7"
  spec.add_dependency "pandoc-ruby", "~>2.0"
end
