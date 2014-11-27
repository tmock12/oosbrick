class AdminsController < ApplicationController
  before_filter :require_user

  def show
    @lego_sets = decorate(LegoSet.order(:number))
  end

end
