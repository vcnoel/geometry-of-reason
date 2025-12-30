import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  -- The goal is to prove x^3 = 2 * sqrt 2.
  have h₃ : x^2 = 1/3 * (2 * (y^2)), by
  { rw h₂,
    rw real.mul_assoc,
    rw real.mul_comm 2 (y^2),
    rw real.div_mul_cancel (ne_of_gt h₀.1) },
  have h₄ : x^3 = (1/3 * (2 * (y^2))) * x,
  by rw real.mul_assoc,
  have h₅ : x = y, by
  { rw h₁,
    rw real.pow_eq_one,
    rw real.eq_one,
    rw h₀.1,
    rw real.rpow_one,
    rw real.rpow_eq_one },
  have h₆ : x^3 = y^3, by
  { rw h₅,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw real.pow_eq_pow,
    rw
end
