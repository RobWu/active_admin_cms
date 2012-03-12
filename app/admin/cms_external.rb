admin_namespace = ActiveAdmin.application.find_or_create_namespace(:admin)

parent_menu = "CMS external"

menus = admin_namespace.menu.add(parent_menu, "/#{ComfortableMexicanSofa.config.admin_route_prefix}", 80)
menu = menus.select{|obj| obj.name == parent_menu }.first

Cms::Site.all.each_with_index do |site, index|
  menu.add site.label, "/#{ComfortableMexicanSofa.config.admin_route_prefix}/sites/#{site.id}/pages", index
end