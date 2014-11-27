class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      sign_in_user user, remember: true
      redirect_to admins_path
    else
      redirect_to :back, alert: "Your email or password are incorrect. Please try again."
    end
  end

end
