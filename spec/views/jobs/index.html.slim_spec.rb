require 'rails_helper'

RSpec.describe "jobs/index", :type => :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :title => "Title",
        :link => "Link",
        :location => "Location",
        :description => "MyText",
        :remote => ""
      ),
      Job.create!(
        :title => "Title",
        :link => "Link",
        :location => "Location",
        :description => "MyText",
        :remote => ""
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
