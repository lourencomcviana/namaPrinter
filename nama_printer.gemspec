Gem::Specification.new do |s|
    s.name        = 'nama_printer'
    s.version     = '1.1'
    s.licenses    = ['MIT']
    s.summary     = "Test application that prints strings in NAMA format"
    s.authors     = ["Lourenço Viana"]
    s.files       = ["./lib/nama_printer.rb"]
    s.test_files  = ["./test/test_main.rb"]

    s.add_development_dependency 'rubocop'
    s.add_development_dependency 'bundler'
    s.add_development_dependency 'solargraph'
  end