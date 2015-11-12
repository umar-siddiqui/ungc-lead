# class ApplicationControlle
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  respond_to :html, :json

  def default_serializer_options
    { root: false }
  end

  protected

  def doc_not_found
    render json: { errors: ['Document Not Found'] }, status: :not_found
  end

  def doc_invalid(exception)
    render json: { errors: exception.document.errors },
           status: :unprocessable_entity
  end
end
