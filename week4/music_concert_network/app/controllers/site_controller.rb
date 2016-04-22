class SiteController < ApplicationController
    def index
        @concerts_this_week = Concert.concerts_this_month

    end
end
