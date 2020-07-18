ActiveAdmin.register Banner do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :text, :link, :banner_image
  
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.input :banner_image, as: :file
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  show do
    attributes_table do
      row :title
      row :text
      row :link
      row :banner_image do |image|
        image_tag url_for(image.banner_image)
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :text, :link]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
