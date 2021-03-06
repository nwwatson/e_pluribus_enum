$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "e_pluribus_enum/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "e_pluribus_enum"
  s.version     = EPluribusEnum::VERSION
  s.authors     = ["Nicholas Watson"]
  s.email       = ["nicholas.w.watson@icloud.com"]
  s.homepage    = "https://github.com/nwwatson/e_pluribus_enum"
  s.summary     = "Ever had a model that stores symbos in field and wish they were integers. Wish no more."
  s.description = "I like symbols in my code, and integers in my database. I also like to control the symbol's value. E Pluribus Enum, its like  E pluribus unum, but for code"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]

end
