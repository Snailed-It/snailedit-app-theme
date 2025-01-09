# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "snailedit-app"
  spec.version       = "0.1.7"
  spec.authors       = ["Rosemary Orchard", "Snailed It Development Ltd"]
  spec.email         = ["rosemary@snailedit.dev"]

  spec.summary       = "A theme for app sites."
  spec.homepage      = "https://snailedit.dev"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
