ActiveAdmin.register Item do


  permit_params :name, :description, :oldprice, :newprice, :image

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :oldprice
      f.input :newprice
      f.input :image, :required => true, :as => :file
    end
    f.submit
  end

  index do
    selectable_column
    column :name
    column :description
    column :oldprice
    column :newprice

    actions
  end

  show do |ad|
    attributes_table do
      row :name
      row :description
      row :oldprice
      row :newprice
      row :image do
        image_tag(ad.image.url(:thumb))
      end
      # Will display the image on show object page
    end
  end
end