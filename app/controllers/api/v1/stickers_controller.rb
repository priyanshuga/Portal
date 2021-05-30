module Api
    module V1
        class StickersController < ApplicationController
            class Sticker < ::Sticker
            end

            respond_to :json
            def index
                respond_with Sticker.all
            end
        end
    end
end