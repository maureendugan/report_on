module ReportOn
  def self.report(username)
    activity = Activity.new(username)
    if activity.code_today?
      "#{username} committed code today."
    else
      "#{username} did not commit code today."
    end
  end
end
