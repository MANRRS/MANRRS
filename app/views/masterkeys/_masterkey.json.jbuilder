# frozen_string_literal: true

json.extract! masterkey, :id, :key, :created_at, :updated_at
json.url masterkey_url(masterkey, format: :json)
