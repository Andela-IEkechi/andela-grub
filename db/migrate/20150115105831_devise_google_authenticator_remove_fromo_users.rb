class DeviseGoogleAuthenticatorRemoveFromoUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :gauth_secret, :gauth_enabled, :gauth_tmp, :gauth_tmp_datetime
    end
  end
end
