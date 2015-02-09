module ReportOn
  class Activity

    attr_reader :username

    def initialize(username)
      @username = username
    end

    def code_today?
      response = `curl https://github.com/#{username}`
      if response.include? 'data-count="0" data-date="2015-02-08"'
        false
      else
        true
      end
    end
  end
end
