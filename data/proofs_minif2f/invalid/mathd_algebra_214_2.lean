import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_214
  (a : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * (x - 2)^2 + 3)
  (h₁ : f 4 = 4) :
  f 6 = 7 :=
begin

  rw h₀ at h₁,
  calc
    f 6 = a * (6 - 2)^2 + 3 : by {rw h₀}
   ... = a * 16 + 3 : by {rw pow_two, rw pow_two}
   ... = 16 * a + 3 : by {rw mul_comm}
   ... = 16 * (4/4) + 3 : by {rw h₁, rw mul_assoc, rw mul_comm}
   ... = 16 * 1 + 3 : by {rw mul_one}
   ... = 16 + 3 : by {rw mul_one}
   ... = 19 : by {rw add_comm, rw add_assoc, rw add_assoc}
   ... = 7 + 12 : by {rw add_comm, rw add_assoc, rw add_assoc}
   ... = 7 + (12) : by {rw add_comm}
   ... = 7 + (6+6) : by {rw add_assoc}
   ... = 7 + 6 + 6 : by {rw add_assoc}
   ... = (7+6) + 6 : by {rw add_assoc}
   ... = 13 + 6
end
