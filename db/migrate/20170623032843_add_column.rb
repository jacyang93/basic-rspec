class AddColumn < ActiveRecord::Migration[5.1]
  def change
      change_table(:posts) { |t| t.timestamps }
  end
end
