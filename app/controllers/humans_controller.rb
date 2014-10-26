class HumansController < ApplicationController
  respond_to :html
  before_action :set_human, :only => [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_human!, :only => [:index, :show]

  def index
    @humans = Human.all
    respond_with(@humans)
  end

  def show
    respond_with(@human)
  end

  def new
    @human = Human.new
    respond_with(@human)
  end

  def edit
  end

  def create
    @human = Human.new(human_params)
    @human.save
    respond_with(@human)
  end

  def update
    @human.update(human_params)
    respond_with(@human)
  end

  def destroy
    @human.destroy
    respond_with(@human)
  end

  private

  def set_human
    @human = Human.find(params[:id])
  end

  def human_params
    params.require(:human).permit(:name, :birthday, :gender)
  end
end
