$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "douban2/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "douban2"
  s.version     = Douban2::VERSION
  s.authors     = ["Jerry Shen"]
  s.email       = ["hansah99@gmail.com"]
  s.homepage    = "https://github.com/jerryshen/douban2"
  s.summary     = "A wrapper for Douban OAuth2 API"
  s.description = "A wrapper for Douban OAuth2 API."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "oauth2", "~> 0.8.0"
end
