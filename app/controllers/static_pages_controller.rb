class StaticPagesController < ApplicationController
        def team
        end
        def uglycats
            @items = Item.all
        end
        def fatcats
            @items = Item.all
        end
            def desiguesedcats
            @items = Item.all
        end
        def contact
        end
        def help 
        end 
        def privacypolicy
        end
    end