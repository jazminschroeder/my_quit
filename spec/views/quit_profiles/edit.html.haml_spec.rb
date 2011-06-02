require 'spec_helper'

describe "quit_profiles/edit.html.haml" do
  before(:each) do
    @quit_profile = assign(:quit_profile, stub_model(QuitProfile,
      :cigarettes_per_day => "",
      :cigarettes_per_pack => "",
      :cost_per_pack => ""
    ))
  end

  it "renders the edit quit_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => quit_profiles_path(@quit_profile), :method => "post" do
      assert_select "input#quit_profile_cigarettes_per_day", :name => "quit_profile[cigarettes_per_day]"
      assert_select "input#quit_profile_cigarettes_per_pack", :name => "quit_profile[cigarettes_per_pack]"
      assert_select "input#quit_profile_cost_per_pack", :name => "quit_profile[cost_per_pack]"
    end
  end
end
