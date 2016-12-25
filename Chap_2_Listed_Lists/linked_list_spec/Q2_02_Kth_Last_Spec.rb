require_relative('../Q2_02_Kth_Last')
require_relative('node')

describe 'remove dups' do
  let(:value) { 1 }
  let(:second_node) { Node.new(value: 5) }
  let(:head_node) {
    Node.new(next_node: second_node, value: value)
  }
  
	context 'when value is larger than list' do
	  it { expect(find_from_end(head_node, 3)).to eq(nil) }
	end
  
  context 'value is length of list (0 indexed)' do
    it { expect(find_from_end(head_node, 1)).to eq(head_node) }
  end
  
  context 'value is 0' do
    it { expect(find_from_end(head_node, 0)).to eq(second_node) }
  end
end
