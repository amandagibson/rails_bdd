class ArticlesController < ApplicationController

	http_basic_authenticate_with name: "amandagibson", password: "railsbdd", except: [:index, :show]

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:success] = 'Article was successfully created.'
			redirect_to @article
		else
			flash[:error] = "Title and text can't be blank!"
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			flash[:success] = 'Article was successfully updated.'
			redirect_to @article
		else
			flash[:error] = "Title and text can't be blank!"
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private
	def article_params
		params.require(:article).permit(:title, :content)
	end
end