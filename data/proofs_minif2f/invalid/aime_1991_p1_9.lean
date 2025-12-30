import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  -- rewrite the equation
  rw h₁ at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm] at h₂,
  -- rewrite the equation
  rw [mul_comm, add_comm] at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm] at h₂,
  -- rewrite the equation
  rw [mul_comm, add_comm] at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm] at h₂,
  -- rewrite the equation
  rw [mul_comm, add_comm] at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm] at h₂,
  -- rewrite the equation
  rw [mul_comm, add_comm] at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm] at h₂,
  -- rewrite the equation
  rw [mul_comm, add_comm] at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm] at h₂,
  -- rewrite the equation
  rw [mul_comm, add_comm] at h₂,
  -- simplify the equation
  rw [mul_comm, add_comm
end
