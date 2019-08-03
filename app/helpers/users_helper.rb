module UsersHelper

  def logged?
    session[:user_id].present? ? true : false  #acá hay un if ternario

  end

  def current_user
    User.find(session[:user_id])
  end



end
