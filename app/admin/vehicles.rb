ActiveAdmin.register Vehicle do
  menu priority: 3

  permit_params :owned, :user, :model,
                :parkX, :parkY, :parkZ, :parkA,
                :color1, :color2, :paintjob, :locked,
                :registration, :spoiler, :hood, :roof,
                :side_skirt, :lamps, :nitro, :exhaust, :wheels,
                :stereo, :hydraulics, :front_bumper, :rear_bumper,
                :vent_right, :vent_left

  index do
    selectable_column
    id_column
    column :owned
    column :model
    column :user
  end

  show do
    attributes_table do
      row :owned
      row :user
      row :model
      row :parkX
      row :parkY
      row :parkZ
      row :parkA
      row :color1
      row :color2
      row :paintjob
      row :locked
      row :registration
      row :spoiler
      row :hood
      row :roof
      row :side_skirt
      row :lamps
      row :nitro
      row :exhaust
      row :wheels
      row :stereo
      row :hydraulics
      row :front_bumper
      row :rear_bumper
      row :vent_right
      row :vent_left
    end
  end

  filter :user
  filter :model
end