ActiveAdmin.register Gallery do
  form do |f|
    f.inputs do
      f.input :title
      f.input :description
    end
    f.buttons
  end
end