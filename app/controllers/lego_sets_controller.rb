class LegoSetsController < ApplicationController

  def new
    @lego_set ||= LegoSet.new
  end

  def create
    @lego_set = LegoSet.new(lego_set_params)
    if @lego_set.save
      StockCheckerJob.new.async.check_stock(@lego_set)
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @lego_set = LegoSet.find(params[:id])
  end

  def update
    @lego_set = LegoSet.find(params[:id])
    if @lego_set.update(lego_set_params)
      StockCheckerJob.new.async.check_stock(@lego_set)
      redirect_to :root
    else
      render :edit
    end
  end

  def index
    @lego_sets = decorate(LegoSet.order(number: :desc))
  end

  private

  def lego_set_params
    params.require(:lego_set).permit(:name, :number, :amazon_url, :walmart_url,
                                     :lego_url, :price_in_stock, :tru_url, :target_url)
  end
end
