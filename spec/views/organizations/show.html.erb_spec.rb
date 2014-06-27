require 'spec_helper'

describe "organizations/show" do
  before(:each) do
    @organization = assign(:organization, stub_model(Organization,
      :name => "",
      :code => "MyText",
      :description => "MyText",
      :billing_type => "Billing Type",
      :start_date => "Start Date",
      :dead_date => "Dead Date",
      :end_date => "End Date",
      :git_url => "Git Url",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Billing Type/)
    rendered.should match(/Start Date/)
    rendered.should match(/Dead Date/)
    rendered.should match(/End Date/)
    rendered.should match(/Git Url/)
    rendered.should match(/Status/)
  end
end
