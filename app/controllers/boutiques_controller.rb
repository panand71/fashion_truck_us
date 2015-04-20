class BoutiquesController < ApplicationController
  before_action :set_boutique, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  
  
  
  
  # GET /boutiques
  # GET /boutiques.json
  # def index
  #   @boutiques = Boutique.order(sort_column + " " +sort_direction)
  # end

  def index
    if params[:search]
      @boutiques = Boutique.search(params[:search]).order(sort_column + " " +sort_direction)
    else
      @boutiques = Boutique.order(sort_column + " " +sort_direction)
    end
  end


  # GET /boutiques/1
  # GET /boutiques/1.json
  def show
  end

  # GET /boutiques/new
  def new
    @boutique = Boutique.new
  end

  # GET /boutiques/1/edit
 def edit
    @boutique = Boutique.find(params[:id])
  end

  # POST /boutiques
  # POST /boutiques.json
  def create
    @boutique = Boutique.new(boutique_params)

    respond_to do |format|
      if @boutique.save
        format.html { redirect_to @boutique, notice: 'Boutique was successfully created.' }
        format.json { render :show, status: :created, location: @boutique }
      else
        format.html { render :new }
        format.json { render json: @boutique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boutiques/1
  # PATCH/PUT /boutiques/1.json
  def update
    respond_to do |format|
      if @boutique.update(boutique_params)
        format.html { redirect_to @boutique, notice: 'Boutique was successfully updated.' }
        format.json { render :show, status: :ok, location: @boutique }
      else
        format.html { render :edit }
        format.json { render json: @boutique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boutiques/1
  # DELETE /boutiques/1.json
  def destroy
    @boutique.destroy
    respond_to do |format|
      format.html { redirect_to boutiques_url, notice: 'Boutique was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def import
    Boutique.import(params[:file])
    redirect_to boutiques_path, notice: "Boutiques uploaded"
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def user_params
      params.require(:boutique).permit(:name, :email)
    end

    def set_boutique
      @boutique = Boutique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boutique_params
      params.require(:boutique).permit(:name, :owner_id, :website, :twitter, :facebook, :instagram, :email, :city, :state, :schedule, :description, :category)
    end

    def sort_column
      Boutique.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

  end
