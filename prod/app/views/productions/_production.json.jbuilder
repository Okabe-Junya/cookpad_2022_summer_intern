# frozen_string_literal: true

json.extract! production, :id, :name, :category, :price, :comment, :created_at, :updated_at
json.url production_url(production, format: :json)
