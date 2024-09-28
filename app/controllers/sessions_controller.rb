class SessionsController < ApplicationController
  skip_before_action :authenticate

  def new; end

  def create
    if (user = User.authenticate_by(email: params[:email], password: params[:password]))
      login(user)
      redirect_to root_path
    else
      flash.now[:error] = "Invalid email/password combination"
      render :new, status: :unauthorized
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
