class Manage::AssetsController < ApplicationController
  def index
    @assets = Asset.sorted
  end

  def new
    @asset = asset_type.new
    @asset.type = asset_type
  end

  def create
    @asset = asset_type.new(asset_params(asset_type))
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
    @asset = asset_type.find(params[:id])
    if @asset.update(asset_params(asset_type))
      redirect_to manage_assets_path, notice: "Asset was updated successfully."
    else
      render "edit"
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to manage_assets_path, alert: "Asset was deleted successfully."
  end

  private
  def asset_types
    ["House", "ComplexBuilding", "CommercialUnit"]
  end

  def asset_type
    params[:type].constantize if params[:type].in? asset_types
  end


  def asset_params(type)
    params.require(type.to_s.underscore.to_sym).permit(:title, :description, :description, :owner, :address, :rooms, :sqmt, :floors, :air_cond,
                                 :price, :units, :shops, :parking)
  end

end
