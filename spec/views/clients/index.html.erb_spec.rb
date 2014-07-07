require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :ClientName => "Client Name",
        :country => "Country"
      ),
      stub_model(Client,
        :ClientName => "Client Name",
        :country => "Country"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Client Name".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
