class CreateFeatureUpkeeps < ActiveRecord::Migration[6.0]
  def change
    create_table :feature_upkeeps do |t|
      t.belongs_to :feature, null: false, foreign_key: true
      t.belongs_to :upkeep, null: false, foreign_key: true
      t.date :last_done_date

      t.timestamps
    end
  end
end
