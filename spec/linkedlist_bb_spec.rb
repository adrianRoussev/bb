require 'rspec'
require './lib/linkedlist_bb'

RSpec.describe 'exists' do
it 'exists' do
    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
end

it "has a head eq to nil by default" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
end

it "can append a head" do
    list = LinkedList.new
    list.append("dop")
    expect(list.head.data).to eq("dop")
end
it "the next node of the head is nil by default" do
    list = LinkedList.new
    list.append("dop")
expect(list.head.next_node).to eq(nil)
end

it "can append another node " do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
end

it "can count nodes"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    expect(list.node_count).to eq(3)
end

it "can convert nodes to a string"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    expect(list.to_string).to eq("dop deep su")
end
it "can convert nodes to a string"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    expect(list.to_string).to eq("dop deep su")

end

