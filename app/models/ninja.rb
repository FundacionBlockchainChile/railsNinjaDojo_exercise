class Ninja < ApplicationRecord
  validates :first_name, :last_name, presence: true
  
  belongs_to :dojo

  after_create :creacion_exitosa

  def creacion_exitosa
    p "Tu ninja se ha creado"
  end
end
