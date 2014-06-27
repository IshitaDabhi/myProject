require 'spec_helper'

describe "organizations/index" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :name => "",
        :code => "MyText",
        :description => "MyText",
        :billing_type => "Billing Type",
        :start_date => "Start Date",
        :dead_date => "Dead Date",
        :end_date => "End Date",
        :git_url => "Git Url",
        :status => "Status"
      ),
      stub_model(Organization,
        :name => "",
        :code => "MyText",
        :description => "MyText",
        :billing_type => "Billing Type",
        :start_date => "Start Date",
        :dead_date => "Dead Date",
        :end_date => "End Date",
        :git_url => "Git Url",
        :status => "Status"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Billing Type".to_s, :count => 2
    assert_select "tr>td", :text => "Start Date".to_s, :count => 2
    assert_select "tr>td", :text => "Dead Date".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
    assert_select "tr>td", :text => "Git Url".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
