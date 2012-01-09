class CommentsController < ApplicationController

  before_filter :load_article, :except => :destroy
  before_filter :authenticate, :only => :destroy
  
  def new
    @comment = comment.new
  end

  def index
    @comments = comment.all
  end

  def create
    @comment = @article.comments.new(params[:comment])
    puts "Comment:"
    p @comments
    if @comment.save
      redirect_to @article, :notice => 'Thanks for your comment'
    else
      redirect_to @article, :alert => 'Unable to add comment'
    end
  end

  def destroy
    @article = current_user.articles.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article, :notice => 'Comment deleted'
  end
  
  private
  
   def load_article
     @article = Article.find(params[:article_id])
     puts "article"
     p @article
   end

end