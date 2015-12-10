# class CustomFailure
class CustomFailure < Devise::FailureApp
  def redirect_url
    authentication_index_path
  end

  def respond
    if http_auth?
      http_auth
    else
      flash[:notice] = I18n.t(:unauthenticated, :scope => [:devise, :failure])
      redirect
    end
  end
end
