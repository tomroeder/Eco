class FreigabeStatusesController < ApplicationController
  before_action :set_freigabe_status, only: [:show, :edit, :update, :destroy]

  # GET /freigabe_statuses
  # GET /freigabe_statuses.json
  def index
    @freigabe_statuses = FreigabeStatus.all
  end

  # GET /freigabe_statuses/1
  # GET /freigabe_statuses/1.json
  def show
  end

  # GET /freigabe_statuses/new
  def new
    @freigabe_status = FreigabeStatus.new
  end

  # GET /freigabe_statuses/1/edit
  def edit
  end

  # POST /freigabe_statuses
  # POST /freigabe_statuses.json
  def create
    @freigabe_status = FreigabeStatus.new(freigabe_status_params)

    respond_to do |format|
      if @freigabe_status.save
        format.html { redirect_to @freigabe_status, notice: 'Freigabe status was successfully created.' }
        format.json { render :show, status: :created, location: @freigabe_status }
      else
        format.html { render :new }
        format.json { render json: @freigabe_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freigabe_statuses/1
  # PATCH/PUT /freigabe_statuses/1.json
  def update
    respond_to do |format|
      if @freigabe_status.update(freigabe_status_params)
        format.html { redirect_to @freigabe_status, notice: 'Freigabe status was successfully updated.' }
        format.json { render :show, status: :ok, location: @freigabe_status }
      else
        format.html { render :edit }
        format.json { render json: @freigabe_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freigabe_statuses/1
  # DELETE /freigabe_statuses/1.json
  def destroy
    @freigabe_status.destroy
    respond_to do |format|
      format.html { redirect_to freigabe_statuses_url, notice: 'Freigabe status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freigabe_status
      @freigabe_status = FreigabeStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freigabe_status_params
      params[:freigabe_status]
    end
end
