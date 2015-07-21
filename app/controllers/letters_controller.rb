class LettersController < ApplicationController
  before_action :set_correspondent
  before_action :set_letter, except: [:create, :new]

  # GET /letters
  # GET /letters.json
  def index
    @letters = Letter.all
  end

  # GET /letters/1
  # GET /letters/1.json
  def show
  end

  # GET /letters/new
  def new
    @letter = @correspondent.letters.build
  end

  # GET /letters/1/edit
  def edit
  end

  # POST /letters
  # POST /letters.json
  def create
    @letter = @correspondent.letters.create(letter_params)
    redirect_to @correspondent

    # @letter = Letter.new(letter_params)

    # respond_to do |format|
    #   if @letter.save
    #     format.html { redirect_to @letter, notice: 'Letter was successfully created.' }
    #     format.json { render :show, status: :created, location: @letter }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @letter.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def read
    @letter.update_attribute(:read, true)
    redirect_to @correspondent, notice: "Letter has been marked as read"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correspondent
      @correspondent = Correspondent.find(params[:correspondent_id])
    end

    def set_letter
      @letter = @correspondent.letters.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params[:letter].permit(:send_to, :subject, :content)
    end
end
