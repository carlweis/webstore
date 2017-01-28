class User < ApplicationRecord
  # Include default devise modules. Others available are:
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

    def admin?
      self.admin
    end

end
