class KingdomsController < ApplicationController

    def index
        @kingdoms = Kingdom.paginate(page: params[:page])
    end
end
