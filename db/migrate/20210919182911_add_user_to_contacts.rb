class AddUserToContacts < ActiveRecord::Migration[6.1]
  def change
    # default:3 abaixo servirá para referenciar o user Will do meu banco
    # tive que add esse default pq no rails 6 não deixa migrar com coluna null:false
    add_reference :contacts, :user, null: false, default:3, foreign_key: true
  end
end
