ActiveAdmin.register Site do
  form do |f|
    f.inputs do
      f.input :title
      f.input :body
    end
    f.buttons
  end
end