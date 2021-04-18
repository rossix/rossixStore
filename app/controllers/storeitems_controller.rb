class StoreitemsController < ApplicationController
  before_action :set_storeitem, only: %i[ show edit update destroy ]

  # GET /storeitems or /storeitems.json
  def index
    @storeitems = Storeitem.all
  end

  # GET /storeitems/1 or /storeitems/1.json
  def show
  end

  # GET /storeitems/new
  def new
    @storeitem = Storeitem.new
  end

  # GET /storeitems/1/edit
  def edit
  end

  # POST /storeitems or /storeitems.json
  def create
    @storeitem = Storeitem.new(storeitem_params)

    respond_to do |format|
      if @storeitem.save
        format.html { redirect_to @storeitem, notice: "Storeitem was successfully created." }
        format.json { render :show, status: :created, location: @storeitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @storeitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storeitems/1 or /storeitems/1.json
  def update
    respond_to do |format|
      if @storeitem.update(storeitem_params)
        format.html { redirect_to @storeitem, notice: "Storeitem was successfully updated." }
        format.json { render :show, status: :ok, location: @storeitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @storeitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storeitems/1 or /storeitems/1.json
  def destroy
    @storeitem.destroy
    respond_to do |format|
      format.html { redirect_to storeitems_url, notice: "Storeitem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storeitem
      @storeitem = Storeitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def storeitem_params
      params.require(:storeitem).permit(:artnr, :vendor, :description, :grammage, :size, :note, :inventory, :stockyard, :price)
    end
end
