class SiteController < ApplicationController
    def home
        render 'home' # name of view templates
    end

    def contact
        render 'contact'
    end
end
