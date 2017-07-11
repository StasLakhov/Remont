ActiveAdmin.register Item do

  permit_params :name,
              :description,
              :oldprice,
              :newprice,
              :image

end
