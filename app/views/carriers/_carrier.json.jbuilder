# frozen_string_literal: true

json.extract! carrier, :id, :domain, :created_at, :updated_at
json.url carrier_url(carrier, format: :json)
