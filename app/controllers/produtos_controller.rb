class ProdutosController < ApplicationController
	def index
		@produtos_por_nome = Produto.order(:nome).limit 5
	end
	def create
   		valores = params.require(:produto).permit!
   		produto = Produto.create valores
	end
end
