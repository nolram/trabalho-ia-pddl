; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; Arquivo PDDL de problema do Trabalho de Inteligência Artificial
; Neste problema supõem-se que apenas as lâmpadas da sala1 e sala3 estão queimadas
; A posição inicial do Agente é na sala1
; O objetivo é que todas as lâmpadas estejam funcionando

(define (problem pb2)
  (:domain trocalampada)
  (:requirements :strips)
  (:objects sala1 sala2 sala3 sala4 corredor1 deposito1)
  (:init
      (em sala1)
      (queimado sala1)
      (funcionando sala2)
      (queimado sala3)
      (funcionando sala4)
      (sala sala1)
      (sala sala2)
      (sala sala3)
      (sala sala4)
      (corredor corredor1)
      (deposito deposito1)
  )
  (:goal (and (funcionando sala1)
    (funcionando sala2)
    (funcionando sala3)
    (funcionando sala4)
    )
  )
)
