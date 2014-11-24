class LegoSetsController < ApplicationController

  def new
    @lego_set ||= LegoSet.new
  end

  def create
    @lego_set = LegoSet.new(lego_set_params)
    if @lego_set.save
      redirect_to :root
    else
      render :new
    end
  end

  def index
    @lego_sets = LegoSet.order(number: :desc)
  end

  private

  def lego_set_params
    params.require(:lego_set).permit(:name, :number, :amazon_url, :walmart_url, :lego_url, :price_in_stock)
  end
end
