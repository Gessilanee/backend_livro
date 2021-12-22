class UsersController < ApplicationController
  before_action :authorize_request, except: [:create]

  # GET /users
  def index
    @user = User.find_by_id(@decoded["user_id"])
    render json: { user: @user }, status: :ok
  end

  # def show
  #   render json: @user
  # end 

  # POST /users
  # def create
  #   @user = User.new(livro_params)

  #   if @livro.save
  #     render json: @livro, status: :created, location: @livro
  #   else
  #     render json: @livro.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /users/1
  # def update
  #   if @livro.update(livro_params)
  #     render json: @livro
  #   else
  #     render json: @livro.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /users/1
  # def destroy
  #   @livro.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # # Only allow a list of trusted parameters through.
    # def user_params
    #   params.require(:user).permit(:email, :password)
    # end


end