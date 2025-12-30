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

  have h₃ : b ≠ 0, from dec_trivial,
  have h₄ : a ≠ 0, from dec_trivial,

  have h₅ : a = 3 * b → a - b = 10,
  by { intro h, rw h at h₁, ring },
  exact h₅ h₂,

end
