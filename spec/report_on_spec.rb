require 'report_on'

describe ReportOn do
  describe '#report' do
    it 'will report if a user committed code today.' do
      output = ReportOn.report("botandrose")
      expect(output).to eq "botandrose committed code today."
    end
  end
end
