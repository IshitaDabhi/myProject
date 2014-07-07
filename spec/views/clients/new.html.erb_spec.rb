require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :ClientName => "MyString",
      :country => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_ClientName[name=?]", "client[ClientName]"
      assert_select "input#client_country[name=?]", "client[country]"
    end
  end
end
