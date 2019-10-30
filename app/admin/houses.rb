ActiveAdmin.register House do
  menu priority: 4

  permit_params :owned, :user, :price, :locked,
                :enterX, :enterY, :enterZ, :enterA, :exitY, :exitX, :exitZ, :exitA,
                :outside_interior, :outside_virtual_world, :inside_interior, :inside_virtual_world,
                :materials, :drugs, :slot1, :slot1_ammo, :slot2, :slot2_ammo, :slot3, :slot3_ammo

  index do
    selectable_column
    id_column
    column :owned
    column :user
    column :price
  end

  show do
    attributes_table do
      row :owned
      row :user
      row :price
      row :locked
      row :enterX
      row :enterY
      row :enterZ
      row :enterA
      row :exitY
      row :exitX
      row :exitZ
      row :exitA
      row :outside_interior
      row :outside_virtual_world
      row :inside_interior
      row :inside_virtual_world
      row :materials
      row :drugs
      row :slot1
      row :slot1_ammo
      row :slot2
      row :slot2_ammo
      row :slot3
      row :slot3_ammo
    end
  end

  filter :owned
  filter :user
  filter :price
end