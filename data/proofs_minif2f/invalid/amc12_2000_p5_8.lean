import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p5
  (x p : ℝ)
  (h₀ : x < 2)
  (h₁ : abs (x - 2) = p) :
  x - p = 2 - 2 * p :=
begin

  -- We need to prove x - p = 2 - 2 * p
  -- We are given x < 2
  -- We are given |x - 2| = p
  -- We will use these to prove the desired equation
  -- First, we will prove x - p ≤ 2 - 2 * p
  -- Then, we will prove x - p ≥ 2 - 2 * p
  -- If we can prove these two inequalities, then we can conclude that x - p = 2 - 2 * p
  have h₂ : x - p ≤ 2 - 2 * p,
  { -- We will use the given inequality x < 2
    have h₃ : x - p ≤ 2 - p,
    { -- We will use the fact that x < 2 to prove x - p ≤ 2 - p
      rw abs_sub at h₁,
      have h₄ : abs (2 - x) = p,
      { rw h₁ },
      have h₅ : 2 - x = p,
      { -- We will use the fact that |x - 2| = p to prove 2 - x = p

end
