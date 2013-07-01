# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sudoku_builder/version'

Gem::Specification.new do |spec|
  spec.name          = "sudoku_builder"
  spec.version       = SudokuBuilder::VERSION
  spec.authors       = ["Sudoku Builder"]
  spec.email         = ["sudoku.builder@gmail.com"]
  spec.description   = %q{Automating package deployment on onion/sudoku}
  spec.summary       = %q{Building package on onion/sudoku, quickly deploy fresh code on sudoku platform.}
  spec.homepage      = "http://github.com/sudoku-builder/sudoku_builder"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency 'mechanize'
end
