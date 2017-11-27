class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    if resource.is_a?(Designer)
      edit_designer_path(current_designer)
    elsif resource.is_a?(Retailer)
      root_path
    end
  end
end
