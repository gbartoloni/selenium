require 'site_prism'
require 'require_all'
require 'ruby-progressbar'
require 'nokogiri'
require 'active_support/core_ext'
require 'capybara'

catalog_file_hashes
<option value="catalog_messages">catalog_messages</option>
<option value="catalog_messages::missing">catalog_messages::missing</option>
<option value="catalog_translations">catalog_translations</option>
<option value="locale_priorities">locale_priorities</option>
<option value="localized_assets">localized_assets</option>
<option value="localized_images">localized_images</option>
<option value="object_locale_cache">object_locale_cache</option>
<option value="package_site_nodes">package_site_nodes</option>
<option value="permissions">permissions</option>
<option value="presales_host_data">presales_host_data</option>
<option value="presales_language">presales_language</option>
<option value="proxy_cache">proxy_cache</option>
<option value="rollup_metadata">rollup_metadata</option>
<option value="system_contacts">system_contacts</option>
<option value="tracking">tracking</option>
<option value="zc_cache::memoize">zc_cache::memoize</option>


user_1 = Capybara::Session.new(:selenium) 
user_1.driver.browser.manage.window.resize_to(1000, 400)
user_1.visit 'http://mysite.com/admin/cache'
