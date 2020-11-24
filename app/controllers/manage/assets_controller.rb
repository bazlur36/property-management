class Manage::AssetsController < ApplicationController
  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.new(asset_params)
    if @asset.save
      redirect_to manage_assets_path, notice: "Asset was created successfully."
    else
      render "edit"
    end
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def update
    if ad_type.update(asset_params)
      redirect_to manage_assets_path, notice: "Asset was updated successfully."
    else
      render "edit"
    end
  end

  private

  def ad_types
    ["House", "ComplexBuilding"]
  end

  def ad_type
    params[:type].constantize if params[:type].in? ad_types
  end


  def asset_params
    params.require(:asset).permit(:title, :description, :description, :owner, :address, :rooms, :sqmt, :floors, :air_cond,
                                 :price, :units, :shops, :parking)
  end

end
