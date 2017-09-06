class User < ApplicationRecord
    enum role: [:user,:admin]
  def nombre_usuario
    "#{nombre} #{apellido_paterno} #{apellido_materno}"
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
