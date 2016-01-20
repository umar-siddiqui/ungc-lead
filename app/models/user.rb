# class User
class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  ## Database authenticatable
  field :email,              type: String, default: ''
  field :encrypted_password, type: String, default: ''
  field :type, type: String
  field :name

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  # Confirmable
  field :confirmation_token,   type: String
  field :confirmed_at,         type: Time
  field :confirmation_sent_at, type: Time
  field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0
  # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String
  # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  # Associations
  has_and_belongs_to_many :assesments
  has_many :answers, dependent: :destroy
  belongs_to :company
  has_one :report

  accepts_nested_attributes_for :company

  # new function to return whether a password has been set
  def has_no_password?
    encrypted_password.blank?
  end

  # new function to set the password without knowing the current password
  # used in our confirmation controller.
  def attempt_set_password(params)
    p = {}
    p[:password] = params[:password]
    p[:password_confirmation] = params[:password_confirmation]
    update_attributes(p)
  end

  def password_match?
    add_password_error_messages
    password == password_confirmation && !password.blank?
  end

  def only_if_unconfirmed
    pending_any_confirmation { yield }
  end

  private

  def add_password_error_messages
    errors[:password] << "can't be blank" if password.blank?
    errors[:password_confirmation] = case
                                     when password_confirmation.blank?
                                       "can't be blank"
                                     when password != password_confirmation
                                       'does not match password'
                                     end
  end
end
