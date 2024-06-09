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

  describe '#prepend' do
    it 'adds a node to the beginning of the list' do
      list.append('Brooks')
      expect(list.head.surname).to eq('Brooks')
      expect(list.to_string).to eq('The Brooks family')

      list.append('Henderson')
      expect(list.head.surname).to eq('Brooks')
      expect(list.head.next_node.surname).to eq('Henderson')
      expect(list.to_string).to eq('The Brooks family, followed by the Henderson family')

      list.prepend('McKinney')
      expect(list.head.surname).to eq('McKinney')
      expect(list.head.next_node.surname).to eq('Brooks')
      sentence = 'The McKinney family, followed by the Brooks family, followed by the Henderson family'
      expect(list.to_string).to eq(sentence)
    end
  end

  describe '#insert' do
    it 'inserts a node at the index position provided' do
      list.append('Brooks')
      expect(list.to_string).to eq('The Brooks family')

      list.append('Henderson')
      list.prepend('McKinney')

      sentence = 'The McKinney family, followed by the Brooks family, followed by the Henderson family'
      expect(list.to_string).to eq(sentence)
      expect(list.count).to eq(3)

      list.insert(1, 'Lawson')
      sentence = 'The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family'
      expect(list.to_string).to eq(sentence)
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
