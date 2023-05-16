require 'rspec'
require './lib/node_bb'

RSpec.describe Node do
it 'exists' do
    node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
end

it "has data" do
    node = Node.new("plop")
    expect(node.data).to eq("plop")
end

it "can have other data" do
    node = Node.new("dop")
    expect(node.data).to eq("dop")
end

it "has next node nil by default " do
node = Node.new("plop")
    expect(node.next_node).to eq(nil)
end

it "can have another next node"do
node2= Node.new("dop")
node = Node.new("plop", node2)
    expect(node.next_node).to eq(node2)
end
it 'can add next node' do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
    node2= Node.new("dop")
   node.add_next_node(node2)

    expect(node.next_node).to eq(node2)
  end

  it 'can delete next node' do
    node = Node.new("plop")
    expect(node.next_node).to eq(nil)
    node2= Node.new("dop")
   node.add_next_node(node2)
    expect(node.next_node).to eq(node2)
    node.delete_node 
    expect(node.next_node).to eq(nil)
  end

end