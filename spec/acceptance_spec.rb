describe 'acceptance test' do
  it "report if a user has committed on github today in the command line" do
    output = `bin/report_on botandrose`
    expect(output).to eq "botandrose committed today.\n"
  end
end
