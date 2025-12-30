import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  have h₃ : a ≥ 1 ∧ b ≥ 1 ∧ b ≤ a, from and.intro (and.intro h₀.left h₀.right) h₀.right,
  have h₄ : a + b ≥ 2, from h₃.left.right,
  have h₅ : (a + b) % 10 = 2, from h₁,
  have h₆ : 2 ≤ a + b, from le_of_lt h₄,
  have h₇ : 0 ≤ a, from h₃.left.left,
  have h₈ : 0 ≤ b, from h₃.left.right,
  have h₉ : (a - b) % 10 = 6, from
  
end
