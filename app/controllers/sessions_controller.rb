class SessionsController < ApplicationController
  
  def new
  end

  def create
    owner = Owner.find_by(email: params[:session][:email].downcase)
    if owner && owner.authenticate(params[:session][:password])
      log_in owner
      redirect_to owner
      # Log the owner in and redirect to the owner's show page.
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
