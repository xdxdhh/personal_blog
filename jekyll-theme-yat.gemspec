# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-yat"
  spec.version       = "1.10.0"
  spec.authors       = ["jeffreytse"]
  spec.email         = ["hello@jeffreytse.net"]

  spec.summary       = "Yet another theme for elegant writers with modern flat style and beautiful night/dark mode."
  spec.homepage      = "https://github.com/jeffreytse/jekyll-theme-yat"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README)!i)
  end

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "jekyll-feed"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_runtime_dependency "jekyll-sitemap"
  spec.add_runtime_dependency "jekyll-paginate"
  spec.add_runtime_dependency "jekyll-spaceship"
end
