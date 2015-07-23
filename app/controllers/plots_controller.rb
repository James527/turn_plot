class PlotsController < ApplicationController
  before_action :set_user, except: [:index, :show]
  before_action :set_plot, only: [:show, :edit, :update, :destroy, :activate]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :deactivate, only: [:activate]

  # GET /plots
  # GET /plots.json
  def index
    @plots = Plot.all
  end

  # GET /plots/1
  # GET /plots/1.json
  def show
  end

  # GET /plots/new
  def new
    @plot = @user.plots.build
  end

  # GET /plots/1/edit
  def edit
  end

  # POST /plots
  # POST /plots.json
  def create
    @plot = @user.plots.create(plot_params)
    redirect_to @plot
    # @plot = Plot.new(plot_params)

    # respond_to do |format|
    #   if @plot.save
    #     format.html { redirect_to @plot, notice: 'Plot was successfully created.' }
    #     format.json { render :show, status: :created, location: @plot }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @plot.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /activate
  def activate
    @plot.update_attribute(:active_plot, true)
    redirect_to plot_path(@plot.id), notice: "Your plot has been activated"
  end

  # PATCH/PUT /plots/1
  # PATCH/PUT /plots/1.json
  def update
    respond_to do |format|
      if @plot.update(plot_params)
        format.html { redirect_to @plot, notice: 'Plot was successfully updated.' }
        format.json { render :show, status: :ok, location: @plot }
      else
        format.html { render :edit }
        format.json { render json: @plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plots/1
  # DELETE /plots/1.json
  def destroy
    @plot.destroy
    respond_to do |format|
      format.html { redirect_to plots_url, notice: 'Plot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_plot
      @plot = Plot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plot_params
      params.require(:plot).permit(:title, :content)
    end

  # PATCH/PUT /deactivate
  def deactivate
    user_plots = @user.plots.all
    user_plots.each do |plot|
      if (plot.active_plot == true)
        plot.update_attribute(:active_plot, false)
      end
    end
  end

end