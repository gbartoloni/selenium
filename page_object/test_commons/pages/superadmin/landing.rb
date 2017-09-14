require 'site_prism'
module Pages
    module SuperAdmin
        class Landing <SitePrism::Page
            element :search_field, "input[placeholder^=Search]"
        end
    end
end
