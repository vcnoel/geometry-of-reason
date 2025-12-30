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

  by_cases h₂ : b = 3,
  { exact or.inl h₂ },
  { by_cases h₃ : b = 1,
    { exact or.inr h₃ },
    { have h₄ : 10 * b + 6 < 10 * 9 + 6,
      { apply lt_of_lt_of_le,
        exact mul_lt_mul_of_pos_left h₀ (by intro h, omega),
        apply le_of_lt,
        apply add_lt_add_right,
        apply mul_le_mul_of_nonneg_left,
        apply nat.lt_floor_add_one,
        exact h₃ },
      have h₅ : 10 * b + 6 > 10 * 1 + 6,
      { apply lt_of_lt_of_le,
        exact mul_lt_mul_of_pos_left h₀ (by intro h, omega),
        apply le_of_lt,
        apply add_lt_add_right,
        apply mul_le_mul_of_nonneg_left,
        apply nat.lt_floor_add_one,
        exact h₃ },
      have h₆ : 10 * b + 6 ≠ 10 * 1 + 6,
      { intro h,
        apply h₁,
        rw [h, mul_one],
        exact add
end
