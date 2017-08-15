class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string :name
      t.string :audio_url
      t.string :date

      t.timestamps
    end
  end
end
