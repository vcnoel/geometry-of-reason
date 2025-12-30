import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p11
  (x b : ℝ)
  (h₀ : 0 < b)
  (h₁ : (7 : ℝ)^(x + 7) = 8^x)
  (h₂ : x = real.logb b (7^7)) :
  b = 8/7 :=
begin

  rw h₂ at h₁,
  rw real.logb_def at h₁,
  rw real.pow_eq_pow_iff (7 : ℝ) 7 at h₁,
  rw real.pow_eq_pow_iff (8 : ℝ) 7 at h₁,
  rw real.logb_pow (8 : ℝ) 7 at h₁,
  rw real.logb_pow (7 : ℝ) 7 at h₁,
  rw real.logb_mul (8 : ℝ) (7 : ℝ) 7 at h₁,
  rw real.logb_eq_log (8 : ℝ) (7 : ℝ) at h₁,
  rw h₁,
  rw real.log_eq_logb (8 : ℝ) (7 : ℝ) at h₁,
  rw h₁,
  rw real.logb_eq_log (8 : ℝ) (7 : ℝ) at h₁,
  rw h₁,
  rw real.log_eq_logb (8 : ℝ) (7 : ℝ) at h₁,
  rw h₁,
  rw real.log_eq_logb (8 : ℝ) (7 : ℝ) at h₁,
  rw h₁,
  rw real.logb_eq_log (8 : ℝ) (7 : ℝ
end
