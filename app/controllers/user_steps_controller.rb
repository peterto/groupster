class UserStepsController < ApplicationController
  before_filter :authenticate_user!
  
  include Wicked::Wizard
  steps :personal, :social
  
  def show
    @user = current_user
    render_wizard
  end
  
  def update
    @user = current_user
    @user.update_attributes(params[:user])
    render_wizard @user
  end
  
end
