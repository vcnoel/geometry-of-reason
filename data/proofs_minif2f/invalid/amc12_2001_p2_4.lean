import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p2
  (a b n : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9)
  (h₁ : 0 ≤ b ∧ b ≤ 9)
  (h₂ : n = 10 * a + b)
  (h₃ : n = a * b + a + b) :
  b = 9 :=
begin

  have h₄ : a * b + a + b = 10 * a + b,
  { rw [h₂],
    refl },
  have h₅ : a * b = 10 * a,
  { rw [h₄, h₃],
    ring },
  have h₆ : b = 10,
  { rw [h₅, ←mul_div_cancel' a (10 : ℕ)],
    refl },
  have h₇ : a ≠ 0,
  { intro h,
    have h₈ : 0 = 10 * a,
    { rw [h, h₂],
      refl },
    exact absurd h₈ (ne_of_gt zero_lt_ten) },
  have h₉ : a < 10,
  { exact h₀.right },
  have h₁₀ : 1 ≤ a ∧ a < 10,
  { exact and.intro h₀.left h₉ },
  have h₁₁ : a ∈ {1, 2, 3, 4, 5, 6, 7, 8, 9},
  { rw [set.mem_set_of_eq],
    exact h₁₀ },
  have h₁₂ : a ≠ 
end
