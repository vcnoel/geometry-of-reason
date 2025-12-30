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

  cases h₀,
  { exact or.inr rfl },
  { cases h₁,
    { exact or.inr rfl },
    { exact or.inl rfl } },

end
