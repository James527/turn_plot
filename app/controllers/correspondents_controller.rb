class CorrespondentsController < ApplicationController
  before_action :set_correspondent, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /correspondents
  # GET /correspondents.json
  def index
    @correspondents = Correspondent.all
  end

  # GET /correspondents/1
  # GET /correspondents/1.json
  def show
  end

  # GET /correspondents/new
  def new
    @correspondent = current_user.correspondents.build
  end

  # GET /correspondents/1/edit
  def edit
  end

  # POST /correspondents
  # POST /correspondents.json
  def create
    @correspondent = current_user.correspondents.build(correspondent_params)

    respond_to do |format|
      if @correspondent.save
        format.html { redirect_to @correspondent, notice: 'Correspondent was successfully created.' }
        format.json { render :show, status: :created, location: @correspondent }
      else
        format.html { render :new }
        format.json { render json: @correspondent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correspondents/1
  # PATCH/PUT /correspondents/1.json
  def update
    respond_to do |format|
      if @correspondent.update(correspondent_params)
        format.html { redirect_to @correspondent, notice: 'Correspondent was successfully updated.' }
        format.json { render :show, status: :ok, location: @correspondent }
      else
        format.html { render :edit }
        format.json { render json: @correspondent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correspondents/1
  # DELETE /correspondents/1.json
  def destroy
    @correspondent.destroy
    respond_to do |format|
      format.html { redirect_to correspondents_url, notice: 'Correspondent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correspondent
      @correspondent = Correspondent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correspondent_params
      params[:correspondent]
    end
end