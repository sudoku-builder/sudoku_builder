# encoding: utf-8
module SudokuBuilder
  class Backend < SudokuBuilder::Base
    def get_servers
      log_in(ENV['SUDOKU_USERNAME'], ENV['SUDOKU_PASSWORD'])
      page = @agent.get(@base_url + "/status")
      page.search('div.ssh-box input').each do |ssh_box|
        port, host = ssh_box['value'].split[2,4]
        puts "#{host}:#{port}"
      end
    end
  end
end
