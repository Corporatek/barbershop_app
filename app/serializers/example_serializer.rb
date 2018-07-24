# frozen_string_literal: true

class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable, :user_id

  def editable
    scope == object.user
  end
end
