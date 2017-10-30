(define (domain aspiradorSimples)
(:requirements :strips )
(:predicates (Em ?loc ) (Sala ?loc) (Suja ?loc ) (Limpa ?loc) )

(:action mover :parameters (?loc1 ?loc2)
:precondition (and (Em ?loc1) (Sala ?loc1) (Sala ?loc2))
:effect (and (Em ?loc2) (not (Em ?loc1)) )
)

(:action limpar :parameters (?loc1)
:precondition (and (Em ?loc1) (Sala ?loc1) (Suja ?loc1))
:effect (and (Limpa ?loc1) (not (Suja ?loc1)) )
)
)
