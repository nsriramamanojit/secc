class HomesController < ApplicationController
  before_filter :require_user
    layout "application"
  def index

  end

end
