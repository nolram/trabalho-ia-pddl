; Trabalho de Inteligência Artificial

; Alunos:
; Marlon Baptista de Quadros
; Eurico Saldanha

; Profa.: Dra. Sílvia Maria Wanderley Moraes

; Arquivo PDDL de domínio do Trabalho de Inteligência Artificial
; Trabalho consiste em criar um pddl para um agente que substitui lampadas queimadas
; Para substituir as lampadas queimadas da sala o agente precisa pegar a escada e as lampadas no depósito
; Para acessar o depósito e as salas ele precisa estar no corredor
; Para substituir as lampadas queimadas ele precisa subir na escada e para sair da sala ele precisa descer da escada
; Na nossa implementação supomos que o agente precisa pegar uma lâmpada de cada vez no depósito
; 
(define (domain trocalampada)
  (:requirements :strips :negative-preconditions)
  (:predicates
    (em ?loc)
    (sala ?loc)
    (corredor ?loc)
    (deposito ?loc)
    (queimado ?loc)
    (consertado ?loc)
    (escada)
    (lampada)
    (naescada)
  )
  (:action moversala
    :parameters (?loc1 ?loc2)
    :precondition (and (em ?loc1) (corredor ?loc1) (sala ?loc2))
    :effect (and (em ?loc2) (not (em ?loc1)))
  )
  (:action moversalacorredor
    :parameters (?loc1 ?loc2)
    :precondition (and (em ?loc1) (sala ?loc1) (corredor ?loc2) (not (naescada)))
    :effect (and (em ?loc2) (not (em ?loc1)))
  )
  (:action moverdeposito
    :parameters (?loc1 ?loc2)
    :precondition (and (em ?loc1) (corredor ?loc1) (deposito ?loc2))
    :effect (and (em ?loc2) (not (em ?loc1)))
  )
  (:action moverdepositocorredor
    :parameters (?loc1 ?loc2)
    :precondition (and (em ?loc1) (deposito ?loc1) (corredor ?loc2))
    :effect (and (em ?loc2) (not (em ?loc1)))
  )
  (:action subirescada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (sala ?loc1) (escada) (not (naescada)))
    :effect (and (naescada))
  )
  (:action descerescada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (sala ?loc1) (escada) (naescada))
    :effect (and (not (naescada)))
  )
  (:action trocarlampada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (sala ?loc1) (queimado ?loc1) (escada) (naescada) (lampada))
    :effect (and (consertado ?loc1) (not (queimado ?loc1)) (not(lampada)))
  )
  (:action pegarescada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (deposito ?loc1) (not (escada)))
    :effect (and (escada))
  )
  (:action pegarlampada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (deposito ?loc1) (not (lampada)))
    :effect (and (lampada))
  )
)
