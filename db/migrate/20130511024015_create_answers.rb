class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.datetime :utccalltime
      t.string :data

      t.timestamps
    end
  end
end
