import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_530
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₀ : (n : ℝ) / k < 6)
  (h₁ : (5 : ℝ) < n / k) :
  22 ≤ (nat.lcm n k) / (nat.gcd n k) :=
begin

  apply nat.lcm_gcd_le,
  { exact n },
  { exact k },
  { exact nat.pos_of_ne_zero (λ h, h rfl) },
  { exact nat.pos_of_ne_zero (λ h, h rfl) },
  { exact (nat.gcd n k).pos },
  { exact (nat.lcm n k).pos },
  { exact h₀.1 },
  { exact h₀.2 },
  { exact h₁ },
  { exact h₁ },
  { exact h₁ },
  { exact h₁ },

end
