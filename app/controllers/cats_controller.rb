class CatsController < ApplicationController

	before_action :authenticate_user!, :only => [:create, :edit, :destroy]

  def index
    @cats = Cat.all
    #if we use will paginate @cats = Cat.paginate(:page => params[:page], :order => 'created_at DESC', :per_page => 4)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = current_user.cats.create(cat_params)
    # if @cat.valid?
    #   redirect_to root_path
    #   else
    #   render :new, :status => :unprocessable_entity
    # end
   
  end

  def show
    @cat = Cat.find(params[:id])
    @photo = Photo.new
  end

  def edit
    @cat = Cat.find(params[:id])
    if @cat.user != current_user
          return render :text => 'Only kitty owner may edit!', :status => :forbidden
    end
  end

  def update

  @cat = Cat.find(params[:id])
    if @cat.user != current_user
            return render :text => 'Only kitty owner may edit!', :status => :forbidden
    end
  @cat.update_attributes(cat_params)
      if @cat.valid?
      redirect_to root_path
      else
      render :new, :status => :unprocessable_entity
      end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to root_path
  end

  private

  def cat_params
    params.require(:cat).permit(:id, :catHuman, :catName, :breed, :description, :quirks, :user_id)
  end



end
