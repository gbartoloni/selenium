require 'site_prism'
module Pages
    class Landing <SitePrism::Page
        set_url "http://www.ampion.io/"
        element :company_dropdown, "div#navigation-menu div.nav-dropdown:nth-child(3) p"
    end
end
