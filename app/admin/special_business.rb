ActiveAdmin.register SpecialBusiness do
  menu priority: 6

  permit_params :owned, :user, :name, :description,
                :money, :price, :enter_fee,
                :enterX, :enterY, :enterZ, :enterA
  index do
    selectable_column
    id_column
    column :owned
    column :user
    column :name
  end

  show do
    attributes_table do
      row :owned
      row :user
      row :name
      row :description
      row :price
      row :money
      row :enter_fee
      row :enterX
      row :enterY
      row :enterZ
      row :enterA
      row :exitX
      row :exitY
      row :exitZ
      row :exitA
    end
  end

  filter :user
  filter :business_type
end