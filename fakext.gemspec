Gem::Specification.new {|g|
    g.name          = 'fakext'
    g.version       = '0.0.2'
    g.author        = 'shura'
    g.email         = 'shura1991@gmail.com'
    g.homepage      = 'http://github.com/shurizzle/fakext'
    g.platform      = Gem::Platform::RUBY
    g.description   = 'simple library to make it easy faking an extconf'
    g.summary       = g.description
    g.files         = Dir.glob('lib/**/*')
    g.require_path  = 'lib'
}
