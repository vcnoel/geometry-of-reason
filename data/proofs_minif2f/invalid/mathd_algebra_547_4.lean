import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  simp at h₀ h₁,
  rw [h₀, h₁],
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const,
  rw real.sqrt_sub,
  rw real.sqrt_pow,
  rw real.sqrt_const,
  rw real.sqrt_const
end
