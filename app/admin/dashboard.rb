ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent Items" do
      table_for Exhibition.order("created_at desc").limit(5) do
        column :name do |item|
          link_to item.name, [:admin, item]
        end
        column :created_at
      end
      strong { link_to "View All Items", admin_exhibitions_path }
    end
  end
end
