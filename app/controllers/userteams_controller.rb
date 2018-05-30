class UserteamsController < OpenReadController
  before_action :set_userteam, only: [:show, :update, :destroy]

  # GET /userteams
  def index
    @userteams = Userteam.all

    render json: @userteams
  end

  # GET /userteams/1
  def show
    render json: @userteam
  end

  # POST /userteams
  def create
    @userteam = current_user.userteams.build(userteam_params)

    if @userteam.save
      render json: @userteam, status: :created, location: @userteam
    else
      render json: @userteam.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /userteams/1
  def update
    if @userteam.update(userteam_params)
      render json: @userteam
    else
      render json: @userteam.errors, status: :unprocessable_entity
    end
  end

  # DELETE /userteams/1
  def destroy
    @userteam.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userteam
      @userteam = Userteam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def userteam_params
      params.require(:userteam).permit(:user_id, :team_id)
    end
end
