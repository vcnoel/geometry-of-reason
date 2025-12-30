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
  rw h₂ at h₁,
  rw h₂,
  have h₃ : b = 5, {
    linarith,
  },
  rw h₃,
  norm_num,
end