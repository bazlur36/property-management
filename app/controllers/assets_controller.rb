class AssetsController < ApplicationController

  before_action :get_asset, only: [:buy, :show]
  def index
    @assets = Asset.sorted
  end

  def show

  end

  def buy
    @asset.update_column(:is_sold, true)
    BuyMailer.with(asset: @asset).email_seller.deliver_now
    BuyMailer.with(asset: @asset, user_email: params[:user_email]).email_buyer.deliver_now
    redirect_to polymorphic_path(@asset), notice: "Asset was bought successfully."
  end

  private

  def get_asset
    @asset = Asset.find(params[:id])
  end

  def asset_types
    ["House", "ComplexBuilding", "CommercialUnit"]
  end

  def asset_type
    params[:type].constantize if params[:type].in? asset_types
  end
end
