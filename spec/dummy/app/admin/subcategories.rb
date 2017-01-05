ActiveAdmin.register Subcategory do
  permit_params :id, :name, :category_id
  config.sort_order = 'id_asc'

  filter :name

  show do |subcategory|
    panel 'Async panel', class: 'async-panel', 'data-url' => panel_admin_subcategory_path(subcategory)
  end

  member_action :panel do
    @data = 'Loaded async'

    render layout: false
  end
end