class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string  :username, null: false, limit: 32
      t.string  :password, null: false, limit: 64
      t.string  :nickname, null: false, limit: 32
      t.boolean :enabled,  null: false, default: true
      t.timestamps null: false
    end

    #为测试环境创建一个用户
    create_admin if Rails.env.test?
  end

  def create_admin
    User.create!({
      id: 1,
      username: "superadmin",
      password: 'xxxxx',
      nickname: "superadmin"
    })
  end
end