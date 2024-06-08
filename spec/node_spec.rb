require './spec/spec_helper'

RSpec.describe Node do
  let!(:node) {Node.new('Burke')}

  describe '#initialize' do
    it 'should initialize a new node' do
      expect(node.surname).to eq('Burke')
      expect(node.next_node).to eq(nil)
    end
  end

  describe '#tail?' do
    it 'should specify whether a particular node is the tail' do
      expect(node.surname).to eq('Burke')
      expect(node.tail?).to eq(true)
    end
  end
end
