import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  have h₁ : (finset.range 11).sum k := ∑ k in (finset.range 11), k,
  have h₂ : (finset.range 11).sum k := ∑ k in (finset.range 11), k % 9,
  have h₃ : (finset.range 11).sum k := (finset.range 11).sum k,
  have h₄ : (finset.range 11).sum k := ∑ k in (finset.range 11), k % 9,
  have h₅ : (finset.range 11).sum k := (finset.range 11).sum k % 9,
  have h₆ : (finset.range 11).sum k := ∑ k in (finset.range 11), k % 9,
  have h₇ : (finset.range 11).sum k := (finset.range 11).sum k,
  have h₈ : (finset.range 11).sum k := ∑ k in (finset.range 11), k % 9,
  have h₉ : (finset.range 11).sum k := (finset.range 
end
