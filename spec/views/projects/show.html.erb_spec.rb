require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :code => "MyText",
      :description => "MyText",
      :billing_type => "Billing Type",
      :git_url => "Git Url",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Billing Type/)
    rendered.should match(/Git Url/)
    rendered.should match(/Status/)
  end
end
