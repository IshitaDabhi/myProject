require 'spec_helper'

describe "clients/edit" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :ClientName => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", client_path(@client), "post" do
      assert_select "input#client_ClientName[name=?]", "client[ClientName]"
      assert_select "input#client_country[name=?]", "client[country]"
    end
  end
end
