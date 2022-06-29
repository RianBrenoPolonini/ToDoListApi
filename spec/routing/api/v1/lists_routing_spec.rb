# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(Api::V1::ListsController, type: :routing) do
  describe 'routing' do
    xit 'routes to #index' do
      expect(get: '/lists').to(route_to('lists#index'))
    end

    xit 'routes to #show' do
      expect(get: '/lists/1').to(route_to('lists#show', id: '1'))
    end

    xit 'routes to #create' do
      expect(post: '/lists').to(route_to('lists#create'))
    end

    xit 'routes to #update via PUT' do
      expect(put: '/lists/1').to(route_to('lists#update', id: '1'))
    end

    xit 'routes to #update via PATCH' do
      expect(patch: '/lists/1').to(route_to('lists#update', id: '1'))
    end

    xit 'routes to #destroy' do
      expect(delete: '/lists/1').to(route_to('lists#destroy', id: '1'))
    end
  end
end
