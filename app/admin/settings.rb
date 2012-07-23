ActiveAdmin.register Setting do
  index do
    column :key do |setting|
      t "setting.#{setting.key}"
    end
  end

  form do |f|
    f.inputs do
      f.input :key
      f.input :value
    end
    f.buttons
  end
end