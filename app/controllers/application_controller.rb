class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #把admin的判断式建在这里，应该方便后续的引用吧，如果建在admin/products_controller
  #中，到时候在外面新建的products就又要重新建了吧。

  def admin_required
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end
end
