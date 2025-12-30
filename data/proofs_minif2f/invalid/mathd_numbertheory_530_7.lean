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

  let p := (nat.lcm n k) / (nat.gcd n k),
  have hp : p > 0,
  { calc p > 0
      : by { calc (nat.lcm n k) > 0 : by { calc n > 0 : h₀.left, calc k > 0 : h₀.right, exact nat.lcm_pos_of_pos_of_pos n k }
          ∧ (nat.gcd n k) > 0 : by { calc n > 0 : h₀.left, calc k > 0 : h₀.right, exact nat.gcd_pos_of_pos_of_pos n k }
          → (nat.lcm n k) / (nat.gcd n k) > 0 : by { exact div_pos (nat.lcm_pos_of_pos_of_pos n k) (nat.gcd_pos_of_pos_of_pos n k) } } },
  have h₂ : p ≤ 24,
  { calc p ≤ 24
      : by { calc p ≤ (n / k) * 2 : by { exact mul_le_mul hp (le_of_lt h₁) (le_refl 2) (le_of_lt h₀.right) },
          calc (n / k)
end
