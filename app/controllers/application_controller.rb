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
    unless @user == current_user
      redirect_to root_url, alert: I18n.t('label.illegal_action')
    end
  end

  def check_admin
    unless current_user.admin?
      redirect_to root_url, alert: I18n.t('label.illegal_action')
    end
  end
end
