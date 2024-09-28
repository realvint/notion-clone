module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :authenticate

    helper_method :current_user, :signed_in?
  end

  def login(user)
    Current.user = user
    reset_session
    session[:user_id] = user.id
  end

  def logout
    Current.user = nil
    reset_session
  end

  def current_user
    Current.user ||= authenticate_from_session
  end

  def authenticate_from_session
    User.find_by(id: session[:user_id])
  end

  def authenticate
    redirect_to login_path unless signed_in?
  end

  def signed_in?
    current_user.present?
  end
end
