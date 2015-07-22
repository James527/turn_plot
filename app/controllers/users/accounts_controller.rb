class Users::AccountsController < ApplicationController
  before_action :set_user, only: :user

  # GET /register
  def new
    redirect_to new_user_registration_path
  end

  # POST /register
  def register
    # register User
    # create new Plot
    redirect_to accounts_path
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def account_params
  #     params.require(:account).permit(:content)
  # end
end
