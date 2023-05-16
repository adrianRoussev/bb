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
it "can prepend nodes"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    list.prepend("da")
    list.to_string
    expect(list.to_string).to eq("da dop deep su")
end
it "can insert a a given index"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    list.prepend("da")
    list.insert_after(2, "shu")
    list.to_string
    expect(list.to_string).to eq("da dop shu deep su")
end

it "can insert a a given index"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    list.prepend("da")
    list.insert_after(2, "shu")
    list.to_string
    expect(list.to_string).to eq("da dop shu deep su")
end

it "will not insert at a given index if index is out of bounds"do
list = LinkedList.new
    list.append("dop")
    list.append("deep")
    list.append("su")
    list.prepend("da")
    list.insert_after(7, "shu")
    list.to_string
    expect(list.to_string).to eq("da dop deep su")
end

    it "can find a node at a given index range"do
    list = LinkedList.new
        list.append("dop")
        list.append("deep")
        list.append("su")
        list.prepend("da")
        list.insert_after(2, "shu")
        expect(list.find(0,2)).to eq("da dop")
    end 

    it "can tell if the list includes a node"do
    list = LinkedList.new
        list.append("dop")
        list.append("deep")
        list.append("su")
        list.prepend("da")
        list.insert_after(2, "shu")
        expect(list.includes?("shu")).to eq(true)
    end 

    it "can tell if the list does not include a node"do
    list = LinkedList.new
        list.append("dop")
        list.append("deep")
        list.append("su")
        list.prepend("da")
        list.insert_after(2, "shu")
        expect(list.includes?("sip")).to eq(false)
    end 

    it "can remove the last node"do
    list = LinkedList.new
        list.append("dop")
        list.append("deep")
        list.append("su")
        list.prepend("da")
        list.insert_after(2, "shu")
        list.pop
        expect(list.to_string).to eq("da dop shu deep")
    end 
end  
