class AdminController < ApplicationController

  # Logs user in.
  def login
  	if request.post?
  		user = User.authenticate params[:name], params[:password]
  		if user
  			session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        redirect_to uri || :action => :index
			else
				flash.now[:notice] = "Invalid username or password."
			end
		end
  end

  # Logs user out.
  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to :action => :logout
  end

  # Default page.
  def index
  	@total_orders = Order.count
  end

end
