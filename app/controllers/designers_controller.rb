 class DesignersController < ApplicationController
  def show
    @designer = Designer.find(params[:id])
    session[:previous_page] = "designers#show"
  end

  def index
    @designers = Designer.paginate(page: params[:page], per_page: 6)
  end

  def edit
    @designer = Designer.find(params[:id])
  end

  def update
   @designer = Designer.find(params[:id])
   if @designer.update(designer_params)
    redirect_to designer_path(@designer)
   else
    render 'edit'
   end
  end

  private

   def designer_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:designer).permit(:first_name,:last_name, :brand, :age, :city, :profile_photo, :detail )
  end


end
