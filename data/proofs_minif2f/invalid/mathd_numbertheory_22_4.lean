import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_22
  (b : ℕ)
  (h₀ : b < 10)
  (h₁ : nat.sqrt (10 * b + 6) * nat.sqrt (10 * b + 6) = 10 * b + 6) :
  b = 3 ∨ b = 1 :=
begin

  by_cases h₂ : b = 1,
  {   exact or.inl h₂ },
  by_cases h₃ : b = 3,
  {   exact or.inr h₃ },
  contradiction

end
