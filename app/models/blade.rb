class Blade < ApplicationRecord
  belongs_to :bay, optional: true
  enum cuchilla_type: ['Apertura vertical','Apertura horizontal','Apertura doble horizontal','Pantógrafo','Tipo V']

  enum mecanismo_type: ['Monopolar','Tripolar','Mando Eléctrico','Resorte']

end
