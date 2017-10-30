; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; Arquivo PDDL de problema do Trabalho de Inteligência Artificial
; Neste problema supõem-se que deseja-se apenas que a lampada da sala1 esteja funcionando mesmo sabendo que a lampada da sala2 esteja queimada;
; Existem somente 2 salas (sala1 e sala2)
; A posição inicial do Agente é na sala2
; O objetivo é que a lampada da sala esteja funcionando

(define (problem pb5)
  (:domain trocalampada)
  (:requirements :strips)
  (:objects sala1 sala2 corredor1 deposito1)
  (:init
      (em sala2)
      (funcionando sala1)
      (queimado sala2)
      (sala sala1)
      (sala sala2)
      (corredor corredor1)
      (deposito deposito1)
  )
  (:goal (and (funcionando sala1)
              (queimado sala2)
    )
  )
)
