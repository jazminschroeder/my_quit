require "spec_helper"

describe QuitProfilesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/quit_profiles" }.should route_to(:controller => "quit_profiles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quit_profiles/new" }.should route_to(:controller => "quit_profiles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quit_profiles/1" }.should route_to(:controller => "quit_profiles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/quit_profiles/1/edit" }.should route_to(:controller => "quit_profiles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quit_profiles" }.should route_to(:controller => "quit_profiles", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/quit_profiles/1" }.should route_to(:controller => "quit_profiles", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/quit_profiles/1" }.should route_to(:controller => "quit_profiles", :action => "destroy", :id => "1")
    end

  end
end
