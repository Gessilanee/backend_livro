class AutoresController < ApplicationController
    before_action :set_autor, only: [:show, :update, :destroy]

    def index
        @autores = Autor.all
        render json: { autores: @autores }, status: :ok
      end

      # POST /livros
    def create
        @autor = Autor.new(autor_params)

    if @autor.save
      # render json: @livro, status: :created, location: @livro
      msg = 'Foi cadastrado';
      render json: { msg: msg }, status: :ok
    else
      # render json: @livro.errors, status: :unprocessable_entity
      msg = 'Não foi possivel realizar cadastro';
      render json: { mgs: msg }, status: :unauthorized 
     end
   end


    def destroy
     @autor.destroy
    end
   

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_autor
      @autor = Autor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autor_params
      params.require(:autor).permit(:name, :description)
    end
end
