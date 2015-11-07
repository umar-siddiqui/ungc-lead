class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      allow = [:email, :password, :password_confirmation,
               :name, :type, assesment_ids: [],
               company: [:name]]
      params.require(:user).permit(allow)
    end

end