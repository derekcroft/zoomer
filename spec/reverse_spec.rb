require 'rubygems'
require 'bundler/setup'
require_relative '../sentence'

RSpec.describe Sentence do
  let(:text) { "Matz is nice so we are nice." }
  let(:sentence) { Sentence.new(text) }

  it "instantiates a Sentence object with some text" do
    expect(sentence).to be_an_instance_of(Sentence)
    expect(sentence.text).to eql(text)
  end

  describe "#reverse" do
    subject { sentence.reverse }

    context "when text is an empty string" do
      let(:text) { "" }
      it { is_expected.to eql(text) }
    end

    context "when text is just a period" do
      let(:text) { "." }
      it { is_expected.to eql(text) }
    end

    context "when text is just one word" do
      let(:text) { "nice." }
      it { is_expected.to eql(text) }
    end

    context "when text is two words" do
      let(:text) { "are nice." }
      it { is_expected.to eql("nice are.") }
    end

    context "when text is a full sentence" do
      it { is_expected.to eql("nice are we so nice is Matz.") }
    end

    context "when text is a sentence without a period" do
      let(:text) { "Matz is nice" }
      it { is_expected.to eql("nice is Matz") }
    end
  end
end
