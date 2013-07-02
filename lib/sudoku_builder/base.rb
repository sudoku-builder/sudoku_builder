# encoding: utf-8
module SudokuBuilder
  class Base
    attr_accessor :agent, :username, :password, :base_url, :login_url, :current_page

    def initialize(app_name)
      @base_url = "https://onion.redefine.pl/sudoku/app/#{app_name}"
      @login_url = "https://onion.redefine.pl/sso/login?next=/sudoku/app/#{app_name}/status"
      @agent = Mechanize.new
      @agent.user_agent = Mechanize::AGENT_ALIASES['Linux Firefox']
      @agent.agent.http.ca_file = 'config/curl-ca-bundle.crt'
    end

    def log_in(username, password)
      @username = username
      @password = password
      page = @agent.get(@login_url)
      login_form = page.form_with(action: '/sso/login')
      login_form.username = @username
      login_form.password = @password
      @current_page = @agent.submit(login_form)
    end
  end
end

