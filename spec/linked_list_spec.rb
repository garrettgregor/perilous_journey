require './spec/spec_helper'

RSpec.describe LinkedList do
  let!(:list) { LinkedList.new }

  describe '#initialize' do
    it 'exists and has a nil head' do
      expect(list).to be_a(LinkedList)
      expect(list.head).to eq(nil)
    end
  end

  describe '#append' do
    it 'adds a node to the head' do
      expect(list.append('West')).to be_a(Node)
      expect(list.head.surname).to eq('West')
      expect(list.head.next_node).to eq(nil)
    end
  end

  describe '#count' do
    it 'adds a node to the head' do
      expect(list.count).to eq(0)

      list.append('West')
      expect(list.count).to eq(1)
      list.append('East')
      expect(list.count).to eq(2)
      list.append('South')
      expect(list.count).to eq(3)
    end
  end

  describe '#to_string' do
    it 'generates a string of all the families in the list' do
      expect(list.to_string).to eq('No families')

      list.append('West')
      expect(list.to_string).to eq('The West family')
      list.append('East')
      expect(list.to_string).to eq('The West family, followed by the East family')
      list.append('South')
      expect(list.to_string).to eq('The West family, followed by the East family, followed by the South family')
    end
  end
end
