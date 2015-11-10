# class RegistrationsController
class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    if is_admin
      allow = [:email, :password, :password_confirmation,
               :name, :type, assesment_ids: [],
               company: [:name]]
      params.require(:user).permit(allow)
    else
      render json: { errors: ['Access Denied'] },
             status: :unauthorized
    end
  end

  def is_admin
    if current_user.type.eql?('admin')
      return 'true'
    end
  end
end
