ActiveAdmin.register_page "CMS" do
  content do
    iframe :src => "/cms-admin", :height => "800px", :width => "100%"
  end
end
