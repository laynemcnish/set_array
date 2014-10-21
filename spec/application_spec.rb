require 'spec_helper'

describe SetArray do


  it "starting array has no elements" do
    expect(SetArray.new.size).to eq(0)
    expect(SetArray.new.size).to_not eq(1)
  end

  it "can add elements if they're unique" do
    test_array = SetArray.new
    test_array.add_element(2)
    expect(test_array.size).to eq(1)
  end

  it "can remove elements from the set array" do
    test_array = SetArray.new
    test_array.add_element(1)
    test_array.add_element(2)
    test_array.add_element(3)
    test_array.remove_element(2)
    expect(test_array.size).to eq(2)
  end

  it "can iterate through the set array" do
    test_array = SetArray.new
    test_array.add_element(1)
    test_array.add_element(2)
    test_array.add_element(3)
    sum = 0
    test_array.each{|element| sum += element}
    expect(sum).to eq(6)
  end

  it "can check that each element is unique" do
    test_array = SetArray.new
    test_array.add_element(1)
    test_array.add_element(2)
    test_array.add_element(3)
    test_array.add_element(2)
    expect(test_array.size).to eq(3)
  end
end