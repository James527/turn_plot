class Users::AccountsController < ApplicationController
  before_action :set_user, only: :user
  before_action :set_target_user, only: :coordinates

  # GET /register
  def new
    redirect_to new_user_registration_path
  end

  # GET /login
  def login
    redirect_to new_user_session_path
  end

  # GET /user/1
  # GET /user/1.json
  def user
    if @user == current_user
      redirect_to account_path
    end
  end

  # GET /index
  # GET /index.json
  def index
    @users = User.all
  end

  # GET /account
  # GET /account.json
  def account
    @user = current_user
  end

  # GET /account/list
  def list
    @user = current_user
    @user_plots = @user.plots.all
  end

  # GET /coordinates
  def coordinates
    # @target_user = User.where(x: 1, y: 1)
    puts @target_user[0]
    user_plots = @target_user[0].plots.all
    user_plots.each do |plot|
      if (plot.active_plot == true)
        redirect_to plot_path(plot.id)
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def set_target_user
      @target_user = User.where(x: params[:x], y: params[:y])
    end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def account_params
  #     params.require(:account).permit(:content)
  # end
end
