Gem::Specification.new do |s|
  puts Dir["{bin}/*"]
  puts Dir["{bin}/**"]
  puts Dir["{bin}/*.*"]

  s.name        = 'alchy'
  s.version     = '0.0.1'
  s.date        = '2016-08-13'
  s.summary     = 'Play Alchemy right from your terminal!'
  s.description = 'Play the famous Alchemy game from your terminal.'
  s.authors     = ['Swaathi Kakarla']
  s.email       = 'swaathi@skcript.com'
  s.files       = Dir["{lib}/**/*.rb", "{lib}/combinations.yml", "{bin}/**"]
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.homepage    = 'http://github.com/skcript/alchy'
  s.license     = 'MIT'

  s.add_dependency 'thor', '~> 0'
end
