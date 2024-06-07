require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  describe "#initialize" do
    it "exists and has a nil head" do
      list = LinkedList.new
      expect(list).to be_a(LinkedList)
      expect(list.head).to eq(nil)
    end
  end
end
