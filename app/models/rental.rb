class Rental < BaseResource
  has_many :bookings

  # def as_json(options)
  #   super.merge(include: [:bookings])
  # end
end