# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :appointments
  has_one :barber
end
