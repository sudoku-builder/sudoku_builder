# encoding: utf-8
module SudokuBuilder
  class Builder < SudokuBuilder::Base
    def perform_action(action)
      page = @agent.get(@base_url + "/#{action}")
      confirm_form = page.forms.second
      @current_page = @agent.submit(confirm_form)
    end
  end
end

