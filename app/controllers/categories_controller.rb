class CategoriesController < ApplicationController

  before_action :set_post, only: [:show, :update, :destroy, :edit]

  def index
    @categorie=Category.all
  end

  def show
  end


  def edit
  end

  def update
    if @categorie.update(categorie_params)
      redirect_to categories_path, success: "update done successfuly"
    else
      render 'edit'
    end
  end

  def destroy
    @categorie.destroy
    redirect_to categories_path, success: "destroy done successfuly"
  end

  def new
    @categorie=Category.new
  end

  def create
     @categorie = Category.new
     if @categorie.valid?
       @categorie.save(categorie_params)
      redirect_to categories_path,success: "create done successfuly"
    else
      render 'new'
    end
  end


  private
  def categorie_params
    params.require(:category).permit(:name, :slug)
  end

  def set_post
    @categorie=Category.find(params[:id])
  end


end
