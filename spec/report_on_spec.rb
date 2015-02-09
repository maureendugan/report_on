require 'report_on'

describe ReportOn do
  describe '#report' do
    before do
      @fake_activity = double
      fake_class = double(new: @fake_activity)
      stub_const "ReportOn::Activity", fake_class
    end

    it 'will report if a user committed code today.' do
      @fake_activity.stub(code_today?: true)
      output = ReportOn.report("botandrose")
      expect(output).to eq "botandrose committed code today."
    end

    it 'will report if a user did not commit code today.' do
      @fake_activity.stub(code_today?: false)
      output = ReportOn.report("erniedog")
      expect(output).to eq "erniedog did not commit code today."
    end
  end
end
