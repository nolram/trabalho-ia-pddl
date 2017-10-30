; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; Arquivo PDDL de problema do Trabalho de Inteligência Artificial
; Neste problema supõem que todas as lâmpadas das 4 salas estão queimadas
(define (problem todasqueimadas)
  (:domain trocalampada)
  (:requirements :strips)
  (:objects sala1 sala2 sala3 sala4 corredor1 deposito1)
  (:init
      (em corredor1)
      (queimado sala1)
      (queimado sala2)
      (queimado sala3)
      (queimado sala4)
      (sala sala1)
      (sala sala2)
      (sala sala3)
      (sala sala4)
      (corredor corredor1)
      (deposito deposito1)
  )
  (:goal (and (consertado sala1)
    (consertado sala2)
    (consertado sala3)
    (consertado sala4)
    )
  )
)
