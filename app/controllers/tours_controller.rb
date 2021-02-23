class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:tag].present?
      @tours = Tour.tagged_with(params[:tag])
    else
      @tours = Tour.all
    end
  end

  def show
    @tour = Tour.find(params[:id])
    @related_tours = @tour.find_related_tags
  end

  private

  def tour_params
    params.require(:tour).permit(:tag_list, :title, :description, :duration, :tag_text, :group_size, :image, :price)
  end
end
