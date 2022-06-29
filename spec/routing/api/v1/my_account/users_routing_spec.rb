# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(Api::V1::MyAccount::UsersController, type: :routing) do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/api/v1/my_account').to(route_to('api/v1/my_account/users#show'))
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/my_account').to(route_to('api/v1/my_account/users#update'))
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/my_account').to(route_to('api/v1/my_account/users#destroy'))
    end
  end
end
