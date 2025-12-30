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

  have h₂ := lcm_gcd_le (n * k),
  have h₃ := (nat.div_lcm_gcd n k).symm,
  have h₄ := h₂.trans h₃,
  have h₅ := (h₀.trans h₁).trans (lt_add_one.trans (lt_of_lt_of_le (lt_add_one n) (lt_add_one k))),
  have h₆ := h₅.trans (lt_add_one.trans (lt_of_lt_of_le (lt_add_one n) (lt_add_one k))),
  have h₇ := (h₆.trans h₁).trans (lt_add_one.trans (lt_of_lt_of_le (lt_add_one n) (lt_add_one k))),
  have h₈ := (h₇.trans h₁).trans (lt_add_one.trans (lt_of_lt_of_le (lt_add_one n) (lt_add_one k))),
  have h₉ := (h₈.trans h₁).trans (lt_add_one.trans (lt_of_lt_of_le (lt_add_one n) (lt_add_one k))),
  have h₁₀ := (h₉.trans h₁).trans (lt_add_one.trans (lt_of_lt_of_le (lt
end
