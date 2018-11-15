# frozen_string_literal: true

# Sessions Controller for Authenticate
class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(params[:session][:email])
    if @user&.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to 'login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
