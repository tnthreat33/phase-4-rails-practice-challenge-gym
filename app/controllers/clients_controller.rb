class ClientsController < ActionController::API

    def show
        client = Client.find(params[:id])

        if client 
        render json: client 
        else 
            render json: {error: "Not found"}, status: :not_found
        end 
    end
end 