class PhotosController < ApplicationController

		# before_action :authenticate_user!
	def create
		@cat = Cat.find(params[:cat_id])
		current_user.cats.photos.create(photo_params)
		 # @cat.photos.create(photo_params)
		  #@place.photos.create(photo_params.merge(:user => current_user))
		 redirect_to cat_path(@cat)
		 #place at this place id
	end



	 private

  def photo_params
    params.require(:photo).permit(:picfile, :caption)
  end
end
