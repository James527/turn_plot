class Users::AccountsController < ApplicationController
  before_action :set_user, only: :user

  # GET /index
  # GET /index.json
  def index
    @users = User.all
  end

  # GET /user/1
  # GET /user/1.json
  def user
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
