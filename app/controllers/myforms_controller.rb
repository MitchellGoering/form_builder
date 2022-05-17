class MyformsController < ApplicationController
  def index
    @myforms = Myform.all
  end

  def show
    @myform = Myform.find(params[:id])
  end

  def new
    @myform = Myform.new
  end

  def create
    @myform = Myform.new(myform_params)

    if @myform.save
      redirect_to @myform
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @myform = Myform.find(params[:id])
  end

  def update
    @myform = Myform.find(params[:id])
    if @myform.update(myform_params)
      redirect_to @myform
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @myform = Myform.find(params[:id])
    @myform.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def myform_params
      params.require(:myform).permit(:title, :body)
    end
end
