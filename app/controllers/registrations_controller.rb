class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: :cancel

  # ví dụ để viết về params
  protected
  def sign_up_params
    params.require(:user).permit(:name, :address, :gender, :phone,
      :role, :email, :avatar, :password, :password_confirmation, :current_password)
  end

  def account_update_params
  end
end
