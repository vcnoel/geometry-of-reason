import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  -- We are given the following statement to prove:
  --   10 * a ≤ 28 * a^2 + 1
  -- We will use the following facts to prove this statement:
  --   a ≤ 0
  --   28 * a^2 ≤ 1

  -- First, we will prove that a ≤ 0.
  have a_le_0 : a ≤ 0,
  {
    -- We will use the following fact:
    --   a * a ≤ 0
    -- We will prove this fact using the following statement:
    --   a * a ≤ 0
    -- We will use the following fact:
    --   a * a = a^2
    -- So, we have:
    --   a^2 ≤ 0
    -- We will use the following fact:
    --   a^2 = 0 ∨ a^2 < 0
    -- So, we have:
    --   a^2 < 0
    -- We will use the following fact:
    --   a^2 < 0 → a ≤ 0
    -- So, we have:
    --   a ≤ 0
    have a2_le_
end
