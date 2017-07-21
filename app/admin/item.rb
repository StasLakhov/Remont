ActiveAdmin.register Item do


  permit_params :name, :description, :oldprice, :newprice, :image, :publish


  controller do
    def update
      update! do |format|
        format.html { redirect_to '/admin/items' } if resource.valid?
      end
    end

    def create
      create! do |format|
        format.html { redirect_to '/admin/items' } if resource.valid?
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :oldprice
      f.input :newprice
      f.input :publish
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
    column :publish

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
      row :publish
    end
  end

  batch_action :publish do |selection|
    Item.find(selection).each do |v|
      v.publish = true
      v.save
    end
    redirect_to '/admin/items'
  end

  batch_action :unpublish do |selection|
    Item.find(selection).each do |v|
      v.publish = false
      v.save
    end
    redirect_to '/admin/items'
  end



end