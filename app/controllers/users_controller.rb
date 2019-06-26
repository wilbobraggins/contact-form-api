class UsersController < ApplicationController

  def create
    @user = User.create(user_param)
      if @user.save 
        RecieveMailer.send_mail.deliver    
        render json: @user 
    end
  end

  private

  def user_param
    params.permit(:name, :email, :subject, :message)
  end
end
