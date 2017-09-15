require 'site_prism'
module Pages
    module SuperAdmin
        class Landing <SitePrism::Page
            element :operators_list_link, '[href="/super_admin/operators"]'
            element :search_field, "input[placeholder^=Search]"
            element :operator_matching_dropdown, ".angucomplete-title"
        end
    end
end
