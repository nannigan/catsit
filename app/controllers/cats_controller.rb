class CatsController < ApplicationController

	before_action :authenticate_user!, :only => [:create, :edit, :destroy]


  def create

    # @cat = Cat.create(cat_params)
    current_user.cats.create(cat_params)
    redirect_to current_user
    # current user show page
  end

  # def show
  #    @cat = Cat.show(cat_params)
  # end

  def edit
  	    # @user  = current_user.find(params[:user_id])
  end
   def destroy
    current_user.cats.destroy(cat_params)
   end
  private

    def cat_params
      params.require(:cat).permit(:catHuman, :catName, :breed, :description, :quirks)
    end



end
