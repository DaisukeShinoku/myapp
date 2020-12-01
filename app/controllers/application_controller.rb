class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def logged_in_user
    unless logged_in?
      redirect_to login_url, alert: I18n.t('label.pls_login')
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless @user == current_user
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
