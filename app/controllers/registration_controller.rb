class RegistrationController < ApplicationController
    private

    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :postal_code, :city, :province)
    end
  
    def account_update_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password,  :address, :postal_code, :city, :province)
    end
  end