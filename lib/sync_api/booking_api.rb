module SyncApi
  module BookingApi
    def get_booking(params)
      send_http_request("/rentals/#{params[:rental_id]}/bookings/#{params[:id]}", :get, params)
    end

    def get_bookings(params)
      send_http_request("/rentals/#{params[:rental_id]}/bookings", :get, params)
    end

    def create_booking(params)
      send_http_request("/rentals/#{params[:booking][:rental_id]}/bookings", :post, params)
    end

    def destroy_booking(params)
      send_http_request("/rentals/#{params[:rental_id]}/bookings/#{params[:id]}", :delete, params)
    end
  end
end