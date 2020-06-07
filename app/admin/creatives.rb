ActiveAdmin.register Creative do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :description, :preview_text, :industry, :twitter, :facebook, :instagram, :spotify, :soundcoud, :apple_music, :youtube
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :preview_text, :industry, :twitter, :facebook, :instagram, :spotify, :soundcoud, :apple_music, :youtube]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
