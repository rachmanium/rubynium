class NewsController < ApplicationController

  def index
    @newss = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(news_params)

    if @news.save
      redirect_to @news
    else
      render 'new'
    end
  end

  def update
    @news = News.find(params[:id])

    if @news.update(news_params)
      redirect_to @news
    else
      render 'edit'
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy

    redirect_to newss_path
  end

  private
  def news_params
    params.require(:news).permit(:judul, :penulis, :isi)
  end

end
