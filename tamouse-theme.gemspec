Gem::Specification.new do |spec|
  spec.name          = "tamouse-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Tamara Temple"]
  spec.email         = ["tamara@tamouse.org"]

  spec.summary       = %q{Common theme for the tamouse.org domain. Work in progress.}
  spec.homepage      = "https://github.com/tamouse/tamouse-theme"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }


  spec.add_runtime_dependency "jekyll", "~> 3.3"
  spec.add_runtime_dependency 'bootstrap-sass'
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
