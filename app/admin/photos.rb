#encoding: utf-8
ActiveAdmin.register Photo do
  index :as => :grid, :columns => 5 do |photo|
    "".tap do |content|
      content << link_to(image_tag(photo.photo.url(:thumb)), admin_photo_path(photo))
      content << link_to("Edytuj", edit_admin_photo_path(photo), class: "photos")
      content << link_to("Ustaw jako domyślne", edit_admin_photo_path(photo), class: "photos")
    end.html_safe
  end
end