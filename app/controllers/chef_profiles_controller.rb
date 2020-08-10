class ChefProfilesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_chef_profile, only: [:show, :edit, :update, :destroy]
  
  # GET /chef_profiles
  # GET /chef_profiles.json
  def index
    @chef_profiles = ChefProfile.all
    
  end

  # GET /chef_profiles/1
  # GET /chef_profiles/1.json
  def show
  end

  # GET /chef_profiles/new
  def new
    @chef_profile = ChefProfile.new
  end

  # GET /chef_profiles/1/edit
  def edit
  end

  # POST /chef_profiles
  # POST /chef_profiles.json
  def create
    @chef_profile = ChefProfile.new(chef_profile_params)
    @chef_profile.user_id = current_user.id
    respond_to do |format|
      if @chef_profile.save
        format.html { redirect_to @chef_profile, notice: 'Chef profile was successfully created.' }
        format.json { render :show, status: :created, location: @chef_profile }
      else
        format.html { render :new }
        format.json { render json: @chef_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chef_profiles/1
  # PATCH/PUT /chef_profiles/1.json
  def update
    respond_to do |format|
      if @chef_profile.update(chef_profile_params)
        format.html { redirect_to @chef_profile, notice: 'Chef profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef_profile }
      else
        format.html { render :edit }
        format.json { render json: @chef_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_profiles/1
  # DELETE /chef_profiles/1.json
  def destroy
    @chef_profile.destroy
    respond_to do |format|
      format.html { redirect_to chef_profiles_url, notice: 'Chef profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_profile
      @chef_profile = ChefProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chef_profile_params
      params.require(:chef_profile).permit(:first_name, :last_name, :email, :contact_number, :street_address, :suburb, :state, :postcode, :cooking_speciality, :cooking_capacity, :food_pick_up_timings, :picture, :user_id)
    end
end
