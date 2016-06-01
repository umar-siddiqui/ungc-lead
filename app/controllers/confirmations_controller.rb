# class ConfirmationsController
class ConfirmationsController < Devise::ConfirmationsController
  # Remove the first skip_before_filter (:require_no_authentication) if you
  # don't want to enable logged users to access the confirmation page.
  skip_before_filter :require_no_authentication
  skip_before_filter :authenticate_user!

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    with_unconfirmed_confirmable do
      do_show
    end

    redirect_to controller: 'authentication',
                action: 'index' if @confirmable.errors.present?
  end

  # PUT /resource/confirmation
  def update
    with_unconfirmed_confirmable do
      @confirmable.attempt_set_password(params[:user])
      if @confirmable.valid? and @confirmable.password_match?
        do_confirm
      else
        do_show
        @confirmable.errors.clear #so that we wont render :new
      end
    end

    if !@confirmable.errors.empty?
      do_show
    end
  end

  protected

  def with_unconfirmed_confirmable
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, params[:confirmation_token])
    if !@confirmable.new_record?
      @confirmable.only_if_unconfirmed { yield }
    end
  end

  def do_show
    @confirmation_token = params[:confirmation_token] ||
                          params[:user][:confirmation_token]
    @requires_password = true
    self.resource = @confirmable
    render 'devise/confirmations/show'
  end

  def do_confirm
    @confirmable.confirm!
    set_flash_message :notice, :confirmed
    redirect_to root_path
  end
end
