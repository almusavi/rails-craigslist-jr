class ArticlesController < ApplicationController
  def create
    @category = Category.find_by(id: params[:id])
    @article = @category.articles.new(article_params)
    if @article.save
      redirect_to "/categories/#{@category.id}/articles/#{@article.id}"
    else
      render :new_article
    end
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
    @article.assign_attributes(article_params)
    if @article.save
      redirect_to "/categories/#{@article.category_id}/articles"
    else
      render :edit_article
    end
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :category_id, :price)
  end
end
