# frozen_string_literal: true

json.array! @carriers, partial: 'carriers/carrier', as: :carrier
