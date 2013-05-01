class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |f|
      f.string :name
      f.string :address
      f.string :phone
    end
  end
end
