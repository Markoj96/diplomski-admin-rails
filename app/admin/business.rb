ActiveAdmin.register Business do
  menu priority: 5

  permit_params :owned, :user, :name, :price,
                :business_type, :locked, :money, :enter_fee,
                :enterX, :enterY, :enterZ, :enterA, :exitX, :exitY, :exitZ, :exitA,
                :outside_interior, :outside_virtual_world, :inside_interior, :inside_virtual_world
  index do
    selectable_column
    id_column
    column :owned
    column :user
    column :name
    column :price
  end

  show do
    attributes_table do
      row :owned
      row :user
      row :name
      row :price
      row :business_type
      row :locked
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
      row :outside_interior
      row :outside_virtual_world
      row :inside_interior
      row :inside_virtual_world
    end
  end

  filter :user
  filter :business_type
end