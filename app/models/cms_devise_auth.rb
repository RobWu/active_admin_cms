module CmsDeviseAuth
  def authenticate
    unless current_admin_user
      redirect_to "/admin"
    end
  end
end
