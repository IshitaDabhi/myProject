require 'spec_helper'

describe "organizations/new" do
  before(:each) do
    assign(:organization, stub_model(Organization,
      :name => "",
      :code => "MyText",
      :description => "MyText",
      :billing_type => "MyString",
      :start_date => "MyString",
      :dead_date => "MyString",
      :end_date => "MyString",
      :git_url => "MyString",
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organizations_path, "post" do
      assert_select "input#organization_name[name=?]", "organization[name]"
      assert_select "textarea#organization_code[name=?]", "organization[code]"
      assert_select "textarea#organization_description[name=?]", "organization[description]"
      assert_select "input#organization_billing_type[name=?]", "organization[billing_type]"
      assert_select "input#organization_start_date[name=?]", "organization[start_date]"
      assert_select "input#organization_dead_date[name=?]", "organization[dead_date]"
      assert_select "input#organization_end_date[name=?]", "organization[end_date]"
      assert_select "input#organization_git_url[name=?]", "organization[git_url]"
      assert_select "input#organization_status[name=?]", "organization[status]"
    end
  end
end
