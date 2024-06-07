require './lib/node'

RSpec.describe Node do
  describe '#initialize' do
    it 'should initialize a new node' do
      node = Node.new('Burke')
      expect(node.surname).to eq('Burke')
      expect(node.next_node).to eq(nil)
    end
  end
end
