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

  have h₂ : 5 < n / k,
  from h₁,

  have h₃ : 0 < n / k,
  from h₀.left,

  have h₄ : n / k < 6,
  from h₀.right,

  have h₅ : n / k > 1,
  from lt_of_lt_of_le h₂ (le_of_lt h₄),

  have h₆ : 1 < n / k,
  from h₅,

  have h₇ : 1 < n,
  from mul_lt_mul_of_pos_left h₆ k,

  have h₈ : 1 < k,
  from h₀.right,

  have h₉ : n < 5 + k,
  from add_lt_add_of_lt_of_nonneg h₇ (nat.zero_le k),

  have h₁₀ : n < 5 + k,
  from h₉,

  have h₁₁ : n - 5 < k,
  from sub_lt_of_lt_add h₇ (nat.le_refl 5),

  have h₁₂ : n - 5 ≤ k,
  from le_of_lt h₁₁,

  have h₁₃ : n - 
end
