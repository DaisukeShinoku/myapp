class Admin::HomesController < ApplicationController
  before_action :logged_in_user
  before_action :check_admin
  def top
  end
end
