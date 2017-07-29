class BaseResource < ActiveResource::Base
  self.site = ENV['API_ENDPOINT'] || 'http://localhost:4000'.freeze
  self.headers['Authorization'] = 'Token token=fake_token'.freeze
end