import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_aneqprodakp4_anmsqrtanp1eq2
  (a : ℕ → ℝ)
  (h₀ : a 0 = 1)
  (h₁ : ∀ n, a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4) :
  ∀ n ≥ 1, a n - real.sqrt (a (n + 1)) = 2 :=
begin

  intro n,
  induction n with n ih,
  { rw [h₁ 0, h₀, real.sqrt, real.sqrt, real.sqrt, real.sqrt],
    exact real.sub_eq_iff_eq_add.2 (zero_eq_add_two : 0 = 2) },
  { rw [h₁ (n + 1), h₁ n, h₁ (n + 1), finset.range_succ, finset.prod_range_succ],
    have := real.sqrt (a (n + 1) + 4),
    rw real.sqrt_add at this,
    have := real.sqrt (a n),
    rw real.sqrt_add at this,
    rw this,
    rw this,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add,
    rw real.sqrt_add
end
