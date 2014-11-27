class AdminsController < ApplicationController
  before_filter :require_user

  def show
    @lego_sets_pending_approval = decorate(LegoSet.pending_approval.order(:number))
  end

end
