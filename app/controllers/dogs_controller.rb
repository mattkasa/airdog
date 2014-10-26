class DogsController < ApplicationController
  respond_to :html
  before_action :set_dog, :only => [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_human!, :only => [:index, :show]

  def index
    @dogs = Dog.all
    respond_with(@dogs)
  end

  def show
    respond_with(@dog)
  end

  def new
    @dog = Dog.new
    respond_with(@dog)
  end

  def edit
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.save
    respond_with(@dog)
  end

  def update
    @dog.update(dog_params)
    respond_with(@dog)
  end

  def destroy
    @dog.destroy
    respond_with(@dog)
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :birthday, :gender, :human_id)
  end
end
