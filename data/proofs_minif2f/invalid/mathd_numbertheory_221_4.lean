import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_221
  (S : finset ℕ)
  (h₀ : ∀ (x : ℕ), x ∈ S ↔ 0 < x ∧ x < 1000 ∧ x.divisors.card = 3) :
  S.card = 11 :=
begin

  cases S,
  { simp },
  { cases S with hS, { contradiction }, { exact h₀ hS } }

end
