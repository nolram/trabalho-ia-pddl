; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; Arquivo PDDL de problema do Trabalho de Inteligência Artificial
; Neste problema supõem-se que existam apenas 2 lampadas e que deseja-se que apenas as lâmpadas das salas 1, 2 e 3 estejam funcionando;
; A posição inicial do Agente é na sala4

(define (problem pb6)
  (:domain trocalampada)
  (:requirements :strips)
  (:objects sala1 sala2 sala3 sala4 corredor1 deposito1)
  (:init
      (em sala4)
      (funcionando sala1)
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
  (:goal (and (funcionando sala1)
              (funcionando sala2)
              (funcionando sala3)
              (queimado sala4)
    )
  )
)
