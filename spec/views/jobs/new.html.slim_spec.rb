require 'rails_helper'

RSpec.describe "jobs/new", :type => :view do
  before(:each) do
    assign(:job, Job.new(
      :title => "MyString",
      :link => "MyString",
      :location => "MyString",
      :description => "MyText",
      :remote => ""
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_title[name=?]", "job[title]"

      assert_select "input#job_link[name=?]", "job[link]"

      assert_select "input#job_location[name=?]", "job[location]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_remote[name=?]", "job[remote]"
    end
  end
end
