require './substring.rb'
require 'yaml'

describe Substring do
  subject {Substring.new}

  describe '#substrings' do
    it 'works with dictonary of one string' do
      dict = ["foo"]
      expect(subject.substrings("foo", dict).to_yaml).to eq({"foo" => 1}.to_yaml)
    end

    it 'works with dictonary of multiple strings' do
      dict = ["foo", "bar", "Hi!", "football", "soccer"]
      expect(subject.substrings("football", dict).to_yaml).to eq({"foo" => 1, "football" => 1}.to_yaml)
    end

    it 'works with multiple input words on dictionary of one' do
      dict = ["how"]
      expect(subject.substrings("Howdy partner, sit down! How's it going?", dict).to_yaml).to eq({"how" => 2}.to_yaml)
    end

    it 'works with multiple input words and multiple dictionary strings' do
      dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(
        subject.substrings("Howdy partner, sit down! How's it going?", dict).to_yaml).to eq(
          {"down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1}.to_yaml)
    end

    it 'works with empty dictionary' do
      dict = []
      expect(
        subject.substrings("Howdy partner, sit down! How's it going?", dict).to_yaml).to eq({}.to_yaml)
    end

    it 'works with empty string' do
      dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      expect(
        subject.substrings("", dict).to_yaml).to eq({}.to_yaml)
    end
  end
end