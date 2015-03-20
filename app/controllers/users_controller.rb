class UsersController < ApplicationController

		def index
			@users = User.all
			@cats = Cat.all
			@photos = Photo.all
		end

		def show
		@user = User.find(params[:id])
		end
		
	

# edit action is responsible for rendering the view

# update action is responsible for interacting with the model (db updates etc)
		def edit
			@user = current_user
		end

		def update
			@user = current_user
			@user.update_attributes(user_params)
			redirect_to user_path(current_user)
		end


		private
	def user_params
		params.require(:user).permit(:full_name, :email, :zip, :visit, :housesit, cats_attributes: [:id, :catHuman, :catName, :breed, :description, :quirks, :user_id], photos_attributes: [:id, :caption, :picfile ] )
	end
		# separate from devise we use devise user

end