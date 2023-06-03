class GymsController < ActionController::API
    def show
      gym = Gym.find(params[:id])
  
      if gym
        render json: gym
      else
        render json: { error: "Not found" }, status: :not_found
      end
    end
  
    def destroy
      gym = Gym.find(params[:id])
  
      if gym
        gym.destroy
        head :no_content
      else
        render json: { error: "Not found" }, status: :not_found
      end
    end
  end