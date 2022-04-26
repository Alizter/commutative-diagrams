
(* t is mutable *)
type path = Hyps.elem * Hyps.morphism list
type t

val extract    : Hyps.path -> path
val init       : path list -> t Proofview.tactic
(* Returns false if nothing was done *)
val connect    : path -> path -> Hyps.eq -> t -> bool Proofview.tactic
val query      : path -> t -> (path * Hyps.eq) Proofview.tactic
val query_conn : path -> path -> t -> Hyps.eq option Proofview.tactic
