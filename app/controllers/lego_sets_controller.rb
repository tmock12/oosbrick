class LegoSetsController < ApplicationController
  before_filter :require_user, only: [:edit, :update]

  def new
    @lego_set ||= LegoSet.new
  end

  def create
    @lego_set = LegoSet.new(lego_set_params)
    if @lego_set.save
      redirect_to :root, notice: "#{@lego_set.name} has been created succesfully and is pending approval. It should be approved sometime within the next 12 hours"
    else
      render :new
    end
  end

  def index
    @lego_sets = decorate(LegoSet.approved.order(:number))
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

  def approve
    lego_set = LegoSet.find(params[:id])
    lego_set.approve!
    StockCheckerJob.new.async.check_stock(@lego_set)
    redirect_to :admins, notice: "You have approved #{lego_set.name}"
  end

  private

  def lego_set_params
    params.require(:lego_set).permit(:name, :number, :amazon_url, :walmart_url,
                                     :lego_url, :price_in_stock, :tru_url, :target_url)
  end
end
