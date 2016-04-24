class SiteController < ApplicationController
    def index
        @concerts_this_month = Concert.concerts_this_month.order('date ASC')
        @concerts_today = Concert.concerts_today.order('date ASC')
        render 'index'
    end
end
