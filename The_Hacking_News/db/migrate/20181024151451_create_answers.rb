class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :body
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end
