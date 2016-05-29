class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  
  # GET /profiles
  def index
  end

  # GET /profiles/:id
  def show
    @username = User.find(params[:id]).username
  end

  # GET /profiles/:id/settings
  def settings
  end

  # GET /profiles/new
  def new
    current_user.profile ? redirect_to(root_path) : @profile = Profile.new
  end

  # POST /profiles
  def create
    @profile = Profile.new    name: params[:name],      
                               age: params[:age],   
                            gender: params[:gender],  
                      phone_number: params[:phone_number], 
                             email: params[:email],
                          location: params[:location],
                       instruments: params[:instruments].downcase,
                             genre: params[:genre],
                      availability: params[:availability], 
                           user_id: current_user.id 
    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, 
                                  notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
        current_user.profile_id = @profile.id
      else
        format.html { render :new }
        format.json { render json: @profile.errors, 
                             status: :unprocessable_entity }
      end
    end
  end

  # GET /profiles/:id/edit
  def edit
  end

  # PATCH /profiles/:id
  def update
  end

  # GET /profiles/:id/settings
  def settings
  end

  # DELETE /profiles/:id
  def destroy
  end

  private

  def set_profile
    @profile = Profile.find params[:id]
  end

  def profile_params
    params.fetch :profile, {}
  end
end
