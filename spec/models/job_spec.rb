require 'rails_helper'

RSpec.describe Job, :type => :model do
  context "#instantiate" do
    it "should generate new instance" do
      newclass=described_class.new
      expect(newclass).to be_a(described_class)
    end
  end
  describe "#initialization" do
    let(:job){ Job.new }
    it "should set the default archived boolean to false" do
      expect( job.archived ).to eq false
    end
  end

  describe "#archive" do
    let(:job){ Job.new }
    it "should set the default archived boolean to false" do
      expect( job.archived ).to eq false
    end
  end
end
