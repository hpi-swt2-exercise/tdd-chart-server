class Score < ActiveRecord::Migration
  def change
    create_table(:scores) do |t|
      t.string    :user,  null: false
      t.integer   :score, null: false
      t.datetime  :time,  null: false
    end
  end
end
