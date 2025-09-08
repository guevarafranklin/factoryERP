class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current_attributes

  private

  def set_current_attributes
    if current_user
      # Assign the currently logged-in user to a global request variable
      Current.user = current_user
      # Assign the organization from the user
      Current.organization = current_user.organization
    end
  end
end
