module SyncApi
  module RentalApi
    def create_rental(params)
      send_http_request('/rentals', :post, params)
    end

    def get_rentals(params)
      send_http_request('/rentals', :get, params)
    end

    def get_rental(params)
      send_http_request("/rentals/#{params}", :get, params)
    end

    def destroy_rental(params)
      send_http_request("/rentals/#{params}", :delete, params)
    end

    def update_rental(params)
      send_http_request("/rentals/#{params[:id]}", :patch, params)
    end
  end
end
