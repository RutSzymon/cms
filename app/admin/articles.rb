ActiveAdmin.register Article do
  form do |f|
    f.inputs do
      f.input :title
      f.input :summary
      f.input :body
    end
    f.buttons
  end
end
