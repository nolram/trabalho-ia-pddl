; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; ATENÇÃO: ALTO CONSUMO DE MEMÓRIA RAM
; Arquivo PDDL de problema do Trabalho de Inteligência Artificial
; Neste problema supõem-se que todas as lâmpadas das 5 salas estão queimadas
; A posição inicial do Agente é no corredor1
; O objetivo é que todas as lâmpadas estejam funcionando

(define (problem pb4)
  (:domain trocalampada)
  (:requirements :strips)
  (:objects sala1 sala2 sala3 sala4 sala5 corredor1 deposito1)
  (:init
      (em corredor1)
      (queimado sala1)
      (queimado sala2)
      (queimado sala3)
      (queimado sala4)
      (queimado sala5)
      (sala sala1)
      (sala sala2)
      (sala sala3)
      (sala sala4)
      (sala sala5)
      (corredor corredor1)
      (deposito deposito1)
  )
  (:goal (and (funcionando sala1)
    (funcionando sala2)
    (funcionando sala3)
    (funcionando sala4)
    (funcionando sala5)
    )
  )
)
