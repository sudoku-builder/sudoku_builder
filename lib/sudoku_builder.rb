require 'sudoku_builder/version'
require 'mechanize'
require 'sudoku_builder/base'
require 'sudoku_builder/builder'

module SudokuBuilder
  require 'sudoku_builder/sudoku_tasks' if defined?(Rails)
end
