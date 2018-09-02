class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update, :show, :destroy]
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @portfolio_items = Portfolio.angular
  end

  def show
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.create(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio is now live'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Your portfolio is now updated'}
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully removed.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle,
      :body,
      technologies_attributes: [
        :name
      ]
    )
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end

end
