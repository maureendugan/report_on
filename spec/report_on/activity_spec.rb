require 'report_on/activity'

describe ReportOn::Activity do
  describe '#code_today?' do
    it 'returns true if the user committed code today.' do
      botandrose = described_class.new("botandrose")
      expect(botandrose.code_today?).to eq true
    end

    it 'returns false if the user did not commit today.' do
      erniedog = described_class.new("moedu23")
      expect(erniedog.code_today?).to eq false
    end
  end
end
