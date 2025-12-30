import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  -- We can split the inequality into two parts
  have h1 : 4 * b * (a + 1) ≤ 4 * b * (a + 1),
  { rw real.mul_comm, exact le_refl _ },
  have h2 : 4 * b^2 + (a + 1)^2 ≥ 4 * b^2 + (a + 1)^2,
  { exact le_refl _ },

  -- We can now combine the two parts
  have h3 : 4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2,
  { apply le_trans h1, exact h2 },

  -- We can now apply the distributive property
  have h4 : 4 * b * (a + 1) = (4 * b * a) + (4 * b * 1),
  { ring },
  have h5 : (a + 1)^2 = a^2 + 2 * a * 1 + 1^2,
  { ring },

  -- We can now substitute the expressions into the inequality
  have h6 : (4 * b * a) + (4
end
