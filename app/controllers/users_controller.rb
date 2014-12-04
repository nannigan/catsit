class UsersController < ApplicationController

		def index
			@users = User.all
			@cats = Cat.all

		end
		def show
		 @user = User.find(params[:id])
		 @cat = Cat.new

		 # if @user == current_user
		 # 				@cat = cat.current_user
		 # end
		 # so cat is avail on the user show page
		end
		def update
			@user = current_user
			@user.update_attributes(user_params)
			redirect_to users_path
		end

		private

		# separate from devise we use devise user
		def user_params
    params.require(:user).permit(:id, cats_attributes: [:id, :catHuman, :catName, :breed, :description, :quirks, :_destroy])
		end
end
