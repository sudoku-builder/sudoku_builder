# encoding: utf-8
require 'sudoku_builder'
require 'rails'

module SudokuBuilder
  class SudokuTasks < Rails::Railtie
    rake_tasks do
      namespace :sudoku do
        desc 'Build package on onion/sudoku. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.'
        task :build do
          builder = SudokuBuilder::Builder.new(Rails.application.class.parent_name.downcase)
          builder.build_package(ENV['SUDOKU_USERNAME'], ENV['SUDOKU_PASSWORD'])
        end
      end
    end
  end
end
