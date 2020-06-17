ActiveAdmin.register Creative do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :description, :preview_text, :industry, :twitter, :facebook, :instagram, :spotify, :soundcoud, :apple_music, :youtube, :artist_image
  #
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.input :artist_image, as: :file
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
show do
  attributes_table do
    row :name
    row :description
    row :preview_text
    row :industry
    row :twitter
    row :facebook
    row :instagram
    row :spotify
    row :soundcoud
    row :apple_music
    row :youtube
    row :artist_image do |image|
      image_tag url_for(image.artist_image)
    end
  end
end

  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :preview_text, :industry, :twitter, :facebook, :instagram, :spotify, :soundcoud, :apple_music, :youtube]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
