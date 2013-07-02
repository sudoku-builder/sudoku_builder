# encoding: utf-8
require 'sudoku_builder'
require 'rails'

module SudokuBuilder
  class SudokuTasks < Rails::Railtie
    rake_tasks do
      namespace :sudoku do
        task :login do
          builder = SudokuBuilder::Builder.new(Rails.application.class.parent_name.downcase)
          builder.log_in(ENV['SUDOKU_USERNAME'], ENV['SUDOKU_PASSWORD'])
        end
        desc 'Build package on onion/sudoku. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.'
        task :build => :login do
          builder.perform_action('force-build')
        end

        desc 'Restart onion/sudoku application. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.'
        task :restart => :login do
          builder.perform_action('restart')
        end

        desc 'Purge onion/sudoku varnish caches. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.' 
        task :purge_varnish => :login do
          builder.perform_action('purge')
        end
      end
    end
  end
end
