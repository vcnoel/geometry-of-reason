import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_123
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 20)
  (h₂ : a = 3 * b) :
  a - b = 10 :=
begin

  apply eq_of_sub_eq, -- Use the `sub_eq` tactic to prove the equality.
  have h₃ : a = 6 * b,
  { have h₄ : 3 = 6 / 2,
    { ring },
    have h₅ : b * 6 = a,
    { rw h₂ },
    have h₆ : b * 6 = 6 * b,
    { ring },
    exact h₅.trans h₆ },
  have h₇ : a - b = 6 * b - b,
  { rw h₃ },
  have h₈ : 6 * b - b = 5 * b,
  { ring },
  have h₉ : 5 * b = 10,
  { have h₁₀ : b = 2,
    { have h₁₁ : a + b = 20,
      { rw h₁ },
      have h₁₂ : a = 18,
      { ring },
      have h₁₃ : 18 = 3 * b,
      { rw h₂ },
      have h₁₄ : b = 6,
      { ring },
      have h₁₅ : b = 2,
     
end
