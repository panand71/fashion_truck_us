module SessionsHelper

  # Logs in the given owner.
  def log_in(owner)
    session[:owner_id] = owner.id
  end

  def current_owner
    @current_owner ||= Owner.find_by(id: session[:owner_id])
  end

  def logged_in?
    !current_owner.nil?
  end

  def log_out
    session.delete(:owner_id)
    @current_owner = nil
  end

  def current_owner?(owner)
    owner == current_owner
  end
end
