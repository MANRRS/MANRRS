# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MasterkeysController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/masterkeys').to route_to('masterkeys#index')
    end

    it 'routes to #new' do
      expect(get: '/masterkeys/new').to route_to('masterkeys#new')
    end

    it 'routes to #show' do
      expect(get: '/masterkeys/1').to route_to('masterkeys#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/masterkeys/1/edit').to route_to('masterkeys#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/masterkeys').to route_to('masterkeys#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/masterkeys/1').to route_to('masterkeys#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/masterkeys/1').to route_to('masterkeys#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/masterkeys/1').to route_to('masterkeys#destroy', id: '1')
    end
  end
end
