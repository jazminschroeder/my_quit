class QuitProfilesController < ApplicationController
  before_filter :authenticate_user!, :except => :show
  
  def show
    @user = User.find_by_username(params[:username])    
    @quit_profile = @user.quit_profile unless @user.nil?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quit_profile }
    end
  end

  def new
    @quit_profile = QuitProfile.new
  end

  def edit
    @quit_profile = QuitProfile.find(params[:id])
  end

  def create
    @quit_profile = QuitProfile.new(params[:quit_profile])
    respond_to do |format|
      if @quit_profile.save
        current_user.quit_profile = @quit_profile
        format.html { redirect_to("/#{current_user.username}", :notice => 'Quit profile was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  
  def update
    @quit_profile = QuitProfile.find(params[:id])
    respond_to do |format|
      if @quit_profile.update_attributes(params[:quit_profile])
        format.html { redirect_to(@quit_profile, :notice => 'Quit profile was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  
end
