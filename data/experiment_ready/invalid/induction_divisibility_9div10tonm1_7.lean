import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  induction n with n IH,
  { cases h₀ with h₀ h₀,
    { exact absurd h₀ (not_lt_zero _),
      { apply h₀,
        exact sub_pos_of_lt h₀ }},
  { apply (divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility_9_of_divisibility
end
