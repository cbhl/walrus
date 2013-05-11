class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :data

      t.timestamps
    end
  end
end
