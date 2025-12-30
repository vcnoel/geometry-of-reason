import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  have h₄ := h₀,
  have h₅ := h₁,
  have h₆ := h₂,
  have h₇ := h₃,
  have h₈ : n^3 = 64,
  { calc n^3 = (n * n * n) : by ring
     ... = (n * n) * n : by ring
     ... = n * (n * n) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n^2) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n^2) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n^2) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n * n) : by ring
     ... = n * (n
end
