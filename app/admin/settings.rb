ActiveAdmin.register Setting do

  index do
    column :key do |setting|
      t "setting.#{setting.key}"
    end
    column :value
    column do |setting|
      link_to "Edytuj", edit_admin_setting_path(setting)
    end
  end

  # form do |f|
  #   f.inputs do
  #     f.input :key
  #     f.input :value
  #   end
  #   f.buttons
  # end
  form :partial => "form"
end