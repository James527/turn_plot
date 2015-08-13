class Users::RegistrationsController < Devise::RegistrationsController
  before_action :get_last_user, only: [:create]
  before_filter :configure_sign_up_params, only: [:create]
  before_filter :configure_account_update_params, only: [:update]
  after_action :new_coordinates, only: [:create]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up).push(:username, :x, :y)
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update) << :username
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    # super(resource)
    account_path(resource)
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  # Gets the last user from the database
  def get_last_user
    @last_user = User.last
  end

  # Generates and saves new grid coordinates for the created user
  def new_coordinates
    # Last user X & Y coordinates
    lastX = @last_user.x
    lastY = @last_user.y

    # New coordinates generator
    if (lastX - 1 > lastY)
      newX = lastX
      newY = lastY + 1
      @new_coordinates = [newX, newY]
    elsif (lastX <= lastY - 1)
      newY = lastY
      newX = lastX + 1
      @new_coordinates = [newX, newY]
    elsif (lastX - 1 === lastY)
      newX = 1
      newY = lastX
      @new_coordinates = [newX, newY]
    elsif (lastX === lastY)
      newX = lastX + 1
      newY = 1
      @new_coordinates = [newX, newY]
    end
    plotX = @new_coordinates[0]
    plotY = @new_coordinates[1]

    # Get the newly created user, add and save new coordinates
    new_user = current_user
    new_user.x = plotX
    new_user.y = plotY
    new_user.save

    # Create initial plot for the new user
    new_plot = new_user.plots.new
    new_plot.active_plot = true
    new_plot.save
  end
  
end