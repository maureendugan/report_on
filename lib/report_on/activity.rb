module ReportOn
  class Activity

    attr_reader :username

    def initialize(username)
      @username = username
    end

    def code_today?
      # load twice to make sure that the commit graph is generated
      `curl https://github.com/#{username} 2>/dev/null`
      response = `curl https://github.com/#{username} 2>/dev/null`
      if response.include? 'data-count="0" data-date="2015-02-08"'
        false
      else
        true
      end
    end
  end
end
