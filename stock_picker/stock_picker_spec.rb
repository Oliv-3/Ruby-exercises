require './stock_picker.rb'
require 'yaml'

describe Stocks do
  subject {Stocks.new}

  describe '#stock_picker' do
    it 'works with array of one' do
      expect(subject.stock_picker([5]).to_yaml).to eq([0, 0].to_yaml)
    end

    it 'works with array of multiple integers where the min occers before max' do
      expect(subject.stock_picker([1, 6, 9, 11, 8, 6, 1, 10]).to_yaml).to eq([0,3].to_yaml)
    end

    it 'works with array of multiple integers' do
      expect(subject.stock_picker([9, 17, 3, 6, 9, 11, 8, 6, 1, 10]).to_yaml).to eq([8,9].to_yaml)
    end

    it 'works with array of multiple integers' do
      expect(subject.stock_picker([20, 4, 3, 5, 6, 8, 16, 12, 2]).to_yaml).to eq([2,6].to_yaml)
    end
  end
end