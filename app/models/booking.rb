class Booking < BaseResource
  self.prefix = '/rentals/:rental_id/'

  attr_accessor :client_email, :start_at, :end_at, :price,:rental_id

  belongs_to :rental

  def client_email
    attributes[:client_email]
  end

  def start_at
    attributes[:start_at]
  end

  def end_at
    attributes[:end_at]
  end

  def price
    attributes[:price]
  end

  def rental_id
    attributes[:rental_id]
  end
end