Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'
  s.required_ruby_version = '>= 1.9'

  s.name              = 'sollum'
  s.version           = '3.0.0'
  s.date              = '2014-04-05'
  s.rubyforge_project = 'gollum'
  s.license           = 'MIT'

  s.summary     = 'A simple, Git-powered wiki.'
  s.description = 'A simple, Git-powered wiki with a sweet API and local frontend.'

  s.authors  = ['Tom Preston-Werner', 'Rick Olson']
  s.email    = 'tom@github.com'
  s.homepage = 'http://github.com/gollum/gollum'

  s.require_paths = %w[lib]

  s.executables = ['sollum']

  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency 'sollum-lib', '~> 3.0'
  s.add_dependency 'github-markdown', '~> 0.6.5'
  s.add_dependency 'sinatra', '~> 1.4', '>= 1.4.4'
  s.add_dependency 'mustache', ['>= 0.99.5', '< 1.0.0']
  s.add_dependency 'useragent', '~> 0.10.0'

  s.add_development_dependency 'rack-test', '~> 0.6.2'
  s.add_development_dependency 'shoulda', '~> 3.5.0'
  s.add_development_dependency 'minitest-reporters', '~> 0.14.16'
  s.add_development_dependency 'twitter_cldr', '~> 2.4.2'
  s.add_development_dependency 'mocha', '~> 1.0.0'

  s.files = `git ls-files -z`.split("\x0")
  
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
