
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
    (lampada ?lamp)
  )
  (:action moversala
    :parameters (?loc1 ?loc2)
    :precondition (and (em ?loc1) (corredor ?loc1) (sala ?loc2))
    :effect (and (em ?loc2) (not (em ?loc1)))
  )
  (:action moversalacorredor
    :parameters (?loc1 ?loc2)
    :precondition (and (em ?loc1) (sala ?loc1) (corredor ?loc2))
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
  (:action trocarlampada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (sala ?loc1) (queimado ?loc1) (escada))
    :effect (and (consertado ?loc1) (not (queimado ?loc1)))
  )
  (:action pegarescada
    :parameters (?loc1)
    :precondition (and (em ?loc1) (deposito ?loc1) (not (escada)))
    :effect (and (escada))
  )
)
