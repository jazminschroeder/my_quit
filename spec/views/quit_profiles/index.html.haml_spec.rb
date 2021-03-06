require 'spec_helper'

describe "quit_profiles/index.html.haml" do
  before(:each) do
    assign(:quit_profiles, [
      stub_model(QuitProfile,
        :cigarettes_per_day => "",
        :cigarettes_per_pack => "",
        :cost_per_pack => ""
      ),
      stub_model(QuitProfile,
        :cigarettes_per_day => "",
        :cigarettes_per_pack => "",
        :cost_per_pack => ""
      )
    ])
  end

  it "renders a list of quit_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
