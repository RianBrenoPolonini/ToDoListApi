# frozen_string_literal: true

module Api
  module V1
    class ListsController < ApplicationController
      load_and_authorize_resource
      before_action :set_list, only: %i[show update destroy]

      # GET /lists
      def index
        @lists = @current_user.lists

        render(json: @lists)
      end

      # GET /lists/1
      def show
        render(json: @list)
      end

      # POST /lists
      def create
        @list = @current_user.lists.build(list_params)

        if @list.save
          render(json: @list, status: :created, location: @list)
        else
          render(json: @list.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT /lists/1
      def update
        if @list.update(list_params)
          render(json: @list)
        else
          render(json: @list.errors, status: :unprocessable_entity)
        end
      end

      def destroy
        @list.destroy
      end

      private

      def set_list
        @list = List.find(params[:id])
      end

      def list_params
        params.require(:list).permit(:name)
      end
    end
  end
end
