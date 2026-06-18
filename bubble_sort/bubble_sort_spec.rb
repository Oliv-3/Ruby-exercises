require './bubble_sort.rb'
require 'yaml'

describe Sort do
  subject {Sort.new}

  describe '#bubble_sort' do
    it 'works with array of length one' do
      expect(subject.bubble_sort([4]).to_yaml).to eq([4].to_yaml)
    end

    it 'works with array longer then one' do
      expect(subject.bubble_sort([4,3,78,2,0,2]).to_yaml).to eq([0,2,2,3,4,78].to_yaml)
    end

    it 'works with already sorted array' do 
      expect(subject.bubble_sort([0,2,2,3,4,78]).to_yaml).to eq([0,2,2,3,4,78].to_yaml)
    end

    it 'works with array of characters' do 
      expect(subject.bubble_sort(['a', 'c', 'b', 'r', 'f']).to_yaml).to eq(['a', 'b', 'c', 'f', 'r'].to_yaml)
    end

    it 'works with already sorted array of characters' do 
      expect(subject.bubble_sort(['a', 'b', 'c', 'f', 'r']).to_yaml).to eq(['a', 'b', 'c', 'f', 'r'].to_yaml)
    end

    it 'works with array of one character' do 
      expect(subject.bubble_sort(['b']).to_yaml).to eq(['b'].to_yaml)
    end
  end
end