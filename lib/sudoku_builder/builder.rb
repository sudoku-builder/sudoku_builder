# encoding: utf-8
module SudokuBuilder
  class Builder < SudokuBuilder::Base
    def perform_action(action)
      log_in(ENV['SUDOKU_USERNAME'], ENV['SUDOKU_PASSWORD'])
      page = @agent.get(@base_url + "/#{action}")
      confirm_form = page.form_with(action: /\/#{action}$/)
      if action == 'purge'
        confirm_form.checkboxes.each{|c| c.check}
      end
      @current_page = @agent.submit(confirm_form)
    end
  end
end

