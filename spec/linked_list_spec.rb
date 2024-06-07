require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  let!(:list) { LinkedList.new }

  describe "#initialize" do
    it "exists and has a nil head" do
      expect(list).to be_a(LinkedList)
      expect(list.head).to eq(nil)
    end
  end

  describe "#append" do
    it "adds a node to the head" do
      expect(list.append("West")).to be_a(Node)
      expect(list.head.surname).to eq("West")
      expect(list.head.next_node).to eq(nil)
    end
  end
end
