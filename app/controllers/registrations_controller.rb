class RegistrationsController < Devise::RegistrationsController
  protected

  def after_update_path_for(resource)
    '/'
  end 
  
  def after_sign_up_path_for(resource)
    user_steps_path(:personal)
  end
end