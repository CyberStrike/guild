require 'rails_helper'

RSpec.describe Job, :type => :model do
  context "#new" do
    it "should generate new instance" do
      newclass=Job.new
      expect(newclass).to be_a(Job)
    end
  end
  describe "#initialization" do
    let(:job){ Job.new }
    it "should set the default archived boolean to false" do
      expect( job.archived ).to eq false
    end
  end
end
