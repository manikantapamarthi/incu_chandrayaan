require '../chandrayaan3'

describe "Chandrayaan3" do
  describe "#takecommands" do
    it "takes user commands" do
      allow_any_instance_of(Kernel).to receive(:gets).and_return("frubl\n")

      chandrayaan3 = Chadrayaan3.take_commands
      expect(chandrayaan3).to eq( ["f", "r", "u", "b", "l"])
    end
  end
end
