# frozen_string_literal: true

json.array! @message_histories, partial: 'message_histories/message_history', as: :message_history
