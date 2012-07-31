#encoding: utf-8
ActiveAdmin.register Photo do
  index :as => :grid, :columns => 5 do |photo|
    "".tap do |content|
      content << link_to(image_tag(photo.photo.url(:thumb)), admin_photo_path(photo))
      content << link_to("Edytuj", edit_admin_photo_path(photo), class: "photos")
      content << link_to("Ustaw jako domyślne", make_deafault_admin_photo_path(photo), class: "photos")
    end.html_safe
  end

  member_action :make_deafault, :method => :get do
    @photo = Photo.find(params[:id])
    @photo.gallery.update_attribute(:photo_id, @photo.id)
    redirect_to admin_photos_path, notice: "Ustawiono jako domyślne"
  end
end