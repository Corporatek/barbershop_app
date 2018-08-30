class BarberSerializer < ActiveModel::Serializer
  attributes :name, :chair, :user_id
end
