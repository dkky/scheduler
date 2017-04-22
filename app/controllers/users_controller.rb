class UsersController < Clearance::UsersController

  def create
    @user = user_from_params

    respond_to do |format|
        if @user.save
            format.html {redirect_back_or url_after_create }
            format.html { sign_in @user }
        else
            format.html { render template: "users/new"}
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
  
  def user_from_params
    User.new(user_params)
  end
end