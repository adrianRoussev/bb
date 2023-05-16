require 'rspec'
require './lib/bb'

RSpec.describe 'BeatBox' do
it 'exists' do
    beats = BeatBox.new
    expect(beats).to be_an_instance_of(BeatBox)
end

it "can append sounds" do
    beats = BeatBox.new
    beats.append("do wu shu")
    expect(beats.list.to_string).to eq("do wu shu")
end

it "has a head" do
    beats = BeatBox.new
    beats.append("do wu shu")
    expect(beats.list.head.data).to eq("do")
end

it "can count beats" do
    beats = BeatBox.new
    beats.append("do wu shu")
    beats.append("deep dop woo")
    expect(beats.beats_count).to eq(6)
end

it "can count beats" do
    beats = BeatBox.new
    beats.append("do wu shu")
    beats.append("deep dop woo")
    expect(beats.list.node_count).to eq(6)
end
end