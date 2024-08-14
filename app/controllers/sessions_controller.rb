class SessionsController < ApplicationController
  def login
    user = User.find_by({ :email => params.fetch("email") })

    if user && user.authenticate(params.fetch("password"))
      session.store("user_id", user.id)
      redirect_to("/", { :notice => "Logged in successfully." })
    else
      redirect_to("/login", { :alert => "Invalid email or password." })
    end
  end

  def logout
    session.delete("user_id")
    redirect_to("/", { :notice => "Logged out successfully." })
  end

  def create
    user = User.find_by({ :email => params.fetch("email") })

    if user && user.authenticate(params.fetch("password"))
      session.store("user_id", user.id)
      redirect_to("/", { :notice => "Logged in successfully." })
    else
      redirect_to("/login", { :alert => "Invalid email or password." })
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to("/", { :notice => "Logged out successfully." })
  end
end
