import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_13
  (u v : ℕ)
  (S : set ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ (14 * n) % 100 = 46)
  (h₁ : is_least S u)
  (h₂ : is_least (S \ {u}) v) :
  ((u + v) : ℚ) / 2 = 64 :=
begin

  apply h₁.1,
  apply h₂.1,
  apply h₁.2,
  apply h₂.2,
  apply h₀,
  split,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,
  apply h₁.2,
  apply h₂.2,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,
  apply h₀,
  split,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,
  apply h₁.2,
  apply h₂.2,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,
  apply h₀,
  split,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,
  apply h₁.2,
  apply h₂.2,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,
  apply h₀,
  split,
  exact (h₁.1 u).2,
  exact (h₂.1 v).2,

end
