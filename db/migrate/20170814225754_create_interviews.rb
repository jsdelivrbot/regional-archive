class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string "name"
      t.string "interview_date"
      t.string "interview_location"
      t.string "place_of_birth"
      t.string "current_residence"
      t.string "hometown"
      t.string "duration"
      t.string "languages"
      t.string "themes" 
      t.string "mode_of_violence"
      t.string "audio_url"
      t.string "religion"  
      t.timestamps
    end
  end
end
