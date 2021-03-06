ActiveAdmin.register Author do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :genre
  actions :all, except: :destroy

  form do |f|
    inputs 'Authors' do
      f.input :name
      f.input :genre
    end
    f.semantic_errors
    f.actions
  end
end
