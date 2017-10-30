(define (problem sujeiraTotal)
(:domain apiradorSimples)
(:init
   (Em Sala1) (Suja Sala1)
  (Suja Sala2) (Sala Sala1) (Sala Sala2))
(:goal (and (Limpa Sala1) (Limpa Sala2) )
)
