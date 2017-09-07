require 'site_prism'
module Pages
    class Login <SitePrism::Page
        set_url "https://www.ampion.net/"
        element :about_us_link, "div.main-nav.w-nav"
    end
end
