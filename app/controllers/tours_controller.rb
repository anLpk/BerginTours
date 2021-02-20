class ToursController < ApplicationController
  def index
    @tours = Tour.all
  end

  def show 
  end

#   private

#   def tour_params
#     params.require(:tour).permit(:title, :description, :duration, :tag_text, :group_size, :image, :price)
#   end
end
