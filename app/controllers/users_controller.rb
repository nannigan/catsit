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


		private

		# separate from devise we use devise user
end
