; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; Arquivo PDDL de problema do Trabalho de Inteligência Artificial
; Neste problema supõem-se que apenas a lâmpada da sala1 está queimada
; A posição inicial do Agente é no corredor1
; O objetivo é que todas as lâmpadas estejam funcionando

(define (problem pb1)
  (:domain trocalampada)
  (:requirements :strips)
  (:objects sala1 sala2 sala3 sala4 corredor1 deposito1)
  (:init
      (em corredor1)
      (queimado sala1)
      (funcionando sala2)
      (funcionando sala3)
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
