class AddFieldsToInterviews < ActiveRecord::Migration[5.1]
  def change
    add_column :interviews, :duration, :string
    add_column :interviews, :language, :string
    add_column :interviews, :gender, :string
  end
end
