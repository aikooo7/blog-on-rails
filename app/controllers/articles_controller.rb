# frozen_string_literal: true

# Controller for the articles index using a index.
class ArticlesController < ApplicationController
  http_basic_authenticate_with name: ENV['username'], password: ENV['password'],
                               except: %i[index show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:Title, :Body)
  end
end
