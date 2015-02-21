class PhotosController < ApplicationController

		# before_action :authenticate_user!
	def create
		@cat = Cat.find(params[:cat_id])
		@cat.photos.create(photo_params)
		 redirect_to cat_path(@cat)
		 #place at this place id
	end



	 private

  def photo_params
    params.require(:photo).permit(:picfile, :caption)
  end
end
