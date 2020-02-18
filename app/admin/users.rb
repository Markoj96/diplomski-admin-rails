ActiveAdmin.register User do
  menu priority: 2

  permit_params :name, :password_digest, :email,
                :gender, :age, :country, :city,
                :money, :identity_card, :skin,
                :banned, :banned_time,
                :spawnX, :spawnY, :spawnZ, :spawnA,
                :bank_account, :bank_money, :bank_credit,
                :admin, :donator, :donator_points,
                :level, :respect, :hours, :play_time, :paycheck,
                :dead, :kills, :deaths, :job, :job_contract,
                :mobile, :mobile_number, :mobile_credit, :address_book,
                :tut, :on_tut,
                :detective_points, :detective_level,
                :truckman_points, :truckman_level,
                :taxi_points, :taxi_level,
                :mechanic_points, :mechanic_level,
                :drugs, :materials,
                :org_leader, :org_member, :org_rank, :org_skin,
                :wanted, :wanted_times, :arrested, :arrested_time, :arrested_times,
                :driving_licence, :flying_licence, :sailing_licence,
                :muted, :muted_time,
                :pistol_skill, :silenced_skill, :desert_skill, :shotgun_skill,
                :sawnoff_skil, :combat_skill, :uzi_skill, :mp5_skill, :ak47_skill,
                :m4_skill, :sniper_skill, :fighting_style

  index do
    selectable_column
    id_column
    column :name
    column :gender
    column :age
    column :country
    column :city
  end

  show do
    panel 'Basic information' do
      attributes_table_for user do
        row :name
        row :password_digest
        row :email
        row :gender
        row :age
        row :country
        row :city
      end
    end

    panel 'In-game details' do
      attributes_table_for user do
        row :spawnX
        row :spawnY
        row :spawnZ
        row :spawnA
        row :money
        row :bank_account
        row :bank_money
        row :bank_credit
        row :identity_card
        row :skin
        row :banned
        row :banned_time
        row :admin
        row :donator
        row :donator_points
        row :level
        row :respect
        row :hours
        row :play_time
        row :paycheck
        row :dead
        row :kills
        row :deaths
        row :job
        row :job_contract
        row :mobile
        row :mobile_number
        row :mobile_credit
        row :address_book
        row :tut
        row :on_tut
        row :detective_points
        row :detective_level
        row :truckman_points
        row :truckman_level
        row :taxi_points
        row :taxi_level
        row :mechanic_points
        row :mechanic_level
        row :drugs
        row :materials
        row :org_leader
        row :org_member
        row :org_rank
        row :org_skin
        row :wanted
        row :wanted_times
        row :arrested
        row :arrested_time
        row :arrested_times
        row :driving_licence
        row :flying_licence
        row :sailing_licence
        row :muted
        row :muted_time
      end
    end

    panel 'Weapon skills' do
      attributes_table_for user do
        row :pistol_skill
        row :silenced_skill
        row :desert_skill
        row :shotgun_skill
        row :sawnoff_skil
        row :combat_skill
        row :uzi_skill
        row :mp5_skill
        row :ak47_skill
        row :m4_skill
        row :sniper_skill
        row :fighting_style
      end
    end
  end

  filter :name
end