class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

<<<<<<< HEAD
    @articles = Article.all
  end

  def show
  end

=======
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
>>>>>>> 92fd252e63411a44fac5180a4cf8a12b0959f99e
  def new
    @article = Article.new
  end

<<<<<<< HEAD
  def edit
  end

=======
  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
>>>>>>> 92fd252e63411a44fac5180a4cf8a12b0959f99e
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
=======
  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
>>>>>>> 92fd252e63411a44fac5180a4cf8a12b0959f99e
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
=======
  # DELETE /articles/1
  # DELETE /articles/1.json
>>>>>>> 92fd252e63411a44fac5180a4cf8a12b0959f99e
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
<<<<<<< HEAD
    
=======
    # Use callbacks to share common setup or constraints between actions.
>>>>>>> 92fd252e63411a44fac5180a4cf8a12b0959f99e
    def set_article
      @article = Article.find(params[:id])
    end

<<<<<<< HEAD
=======
    # Never trust parameters from the scary internet, only allow the white list through.
>>>>>>> 92fd252e63411a44fac5180a4cf8a12b0959f99e
    def article_params
      params.require(:article).permit(:title, :author, :text)
    end
end
