require 'site_prism'
module Pages
    module Operator
        class Landing <SitePrism::Page
            elements :operator_gauges, ".ibox-title#operator"
        end
    end
end