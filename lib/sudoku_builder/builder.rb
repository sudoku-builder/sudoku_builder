# encoding: utf-8
module SudokuBuilder
  class Builder < SudokuBuilder::Base
    def build_package(username, password)
      log_in(username, password)
      page = @agent.get(@base_url + '/force-build')
      confirm_form = page.forms.second
      @current_page = @agent.submit(confirm_form)
    end
  end
end

