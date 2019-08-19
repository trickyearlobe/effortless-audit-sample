# copyright: 2018, The Authors

title "sample section"

# you can also use plain tests
control "habitat-1.0" do
  impact 0.7
  title "Habitat should be running"
  desc  "If habitat isnt running, how can we get compliance data?"
  describe service("habitat") do
    it { should be_enabled }
    it { should be_running }
  end
end

control "sample-file-1.0" do
  impact 0.7
  title "c:\\effortless-audit-windows.file should exist"
  desc "A silly test"
  describe file("c:\\effortless-audit-windows.file") do
    it { should exist }
    it { should be_file }
  end
end
