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
          builder.perform_action('force-build')
        end

        desc 'Restart onion/sudoku application. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.'
        task :restart do
          builder = SudokuBuilder::Builder.new(Rails.application.class.parent_name.downcase)
          builder.perform_action('restart')
        end

        desc 'Purge onion/sudoku varnish caches. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.' 
        task :purge_varnish do
          builder = SudokuBuilder::Builder.new(Rails.application.class.parent_name.downcase)
          builder.perform_action('purge')
        end

        desc 'Get backends of sudoku application. Set onion credentials with SUDOKU_USERNAME and SUDOKU_PASSWORD env variables.'
        task :servers do
          backend = SudokuBuilder::Backend.new(Rails.application.class.parent_name.downcase)
          backend.get_servers
        end
      end
    end
  end
end
