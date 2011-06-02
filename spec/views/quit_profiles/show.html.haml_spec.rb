require 'spec_helper'

describe "quit_profiles/show.html.haml" do
  before(:each) do
    @quit_profile = assign(:quit_profile, stub_model(QuitProfile,
      :cigarettes_per_day => "",
      :cigarettes_per_pack => "",
      :cost_per_pack => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
