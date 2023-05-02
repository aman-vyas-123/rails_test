class InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def show
    @informations = Informations.find(params[:id])
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)

    if @information.save
      redirect_to @information
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @Information = Information.find(params[:id])
  end

  def update
    @Information = Information.find(params[:id])

    if @Information.update(Information_params)
      redirect_to @Information
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @information = Information.find(params[:id])
    @information.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def information_params
      params.require(:information).permit(:name, :age ,:number)
    end
end
