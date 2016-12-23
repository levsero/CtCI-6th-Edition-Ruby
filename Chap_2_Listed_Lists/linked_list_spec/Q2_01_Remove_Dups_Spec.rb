require_relative('../Q2_01_Remove_Dups')
require_relative('node')

describe 'remove dups' do
  let(:value) { 1 }
  let(:second_node) { Node.new(value: 5) }
  let(:head_node) {
    Node.new(next_node: second_node, value: value)
  }
  
	context 'without duplicate value' do
    before { remove_dups(head_node) }
	  it {expect(head_node.length).to eq(2) }
	end
  
  context 'with duplicate value' do
    let(:value) { 5 }
    before { remove_dups(head_node) }
	  it {expect(head_node.length).to eq(1) }
	end
end
