ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :text, :author, :preview_text, :article_image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.input :article_image, direct_upload: true, as: :file
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end

  show do
    attributes_table do
      row :title
      row :text
      row :preview_text
      row :author
      row :article_image do |image|
        image_tag url_for(image.article_image)
      end
    end
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :text, :author, :preview_text, :article_image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
