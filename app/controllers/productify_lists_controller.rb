class ProductifyListsController < ApplicationController
  before_action :set_productify_list, only: [:show, :edit, :update, :destroy]

  # GET /productify_lists
  # GET /productify_lists.json
  def index
    @productify_lists = ProductifyList.all
  end

  # GET /productify_lists/1
  # GET /productify_lists/1.json
  def show
  end

  # GET /productify_lists/new
  def new
    @productify_list = ProductifyList.new
  end

  # GET /productify_lists/1/edit
  def edit
  end

  # POST /productify_lists
  # POST /productify_lists.json
  def create
    @productify_list = ProductifyList.new(productify_list_params)

    respond_to do |format|
      if @productify_list.save
        format.html { redirect_to @productify_list, notice: 'Productify list was successfully created.' }
        format.json { render :show, status: :created, location: @productify_list }
      else
        format.html { render :new }
        format.json { render json: @productify_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productify_lists/1
  # PATCH/PUT /productify_lists/1.json
  def update
    respond_to do |format|
      if @productify_list.update(productify_list_params)
        format.html { redirect_to @productify_list, notice: 'Productify list was successfully updated.' }
        format.json { render :show, status: :ok, location: @productify_list }
      else
        format.html { render :edit }
        format.json { render json: @productify_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productify_lists/1
  # DELETE /productify_lists/1.json
  def destroy
    @productify_list.destroy
    respond_to do |format|
      format.html { redirect_to productify_lists_url, notice: 'Productify list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productify_list
      @productify_list = ProductifyList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productify_list_params
      params.require(:productify_list).permit(:title, :description)
    end
end
