require File.join(File.dirname(__FILE__), 'lib', 'sensu-cli', 'version')

Gem::Specification.new do |s|
  s.name        = 'sensu-cli'
  s.version     = SensuCli::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'A command line utility for Sensu.'
  s.description = 'A command line utility for interacting with the Sensu api.'
  s.authors     = ['Bryan Brandau']
  s.email       = 'agent462@gmail.com'
  s.has_rdoc    = false
  s.licenses    = %w(MIT APACHE)
  s.homepage    = 'http://github.com/agent462/sensu-cli'

  s.add_dependency('rainbow', '1.99.2')
  s.add_dependency('trollop', '2.0')
  s.add_dependency('mixlib-config', '2.1.0')
  s.add_dependency('hirb', '0.7.1')
  s.add_dependency('erubis', '2.7.0')

  s.add_development_dependency('rspec')
  s.add_development_dependency('rubocop')

  s.files         = Dir.glob('{bin,lib}/**/*') + %w(sensu-cli.gemspec README.md settings.example.rb)
  s.executables   = Dir.glob('bin/**/*').map { |file| File.basename(file) }
  s.require_paths = ['lib']
end
