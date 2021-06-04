class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @kids = Kid.search(params[:query])
    else
      @kids = Kid.all
    end
  end

  def show
    @markers = {
        lat: @kid.latitude,
        lng: @kid.longitude,
        info_window: render_to_string(partial: "info_window", locals: { kid: @kid }),
        image_url: helpers.asset_url('marker2.png')
      }
  end

  def new
    @kid = Kid.new
  end

  def create
    @location = params[:kid][:localisation].split(',').first
    @kid = Kid.new(kid_params)
    @user = current_user
    @kid.user_id = @user.id

    @kid.localisation = @location

    if @kid.save
      redirect_to kid_path(@kid)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @location = params[:kid][:localisation].split(',').first
    @kid.localisation = @location
    @kid.update(kid_params)
    redirect_to kid_path(@kid)
  end

  def destroy
    @kid.destroy
    redirect_to kids_path
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :age, :localisation, :service, :price, :photo)

  end

  def set_kid
    @kid = Kid.find(params[:id])
  end
end
