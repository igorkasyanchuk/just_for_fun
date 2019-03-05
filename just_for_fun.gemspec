$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "just_for_fun/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "just_for_fun"
  spec.version     = JustForFun::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/just_for_fun"
  spec.summary     = "Find your models with shortcuts."
  spec.description = "Find your models with shortcuts. Transform numbers and arrays into AR objects."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"

  spec.add_development_dependency "sqlite3", "~> 1.3.6"
end
