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

  -- rewrite h₀ as (x^3 = -45) and h₁ as (y^3 = -101)
  rw [h₀, h₁],

  -- since n is an integer and -45 and -101 are negative integers, n must be negative
  -- and the only negative integer that satisfies the condition is n = -4
  -- hence n = -4
  cases n,
  case pos => contradiction,
  case neg =>
  { -- assume n = -k for some positive integer k
    cases n with k,
    { -- assume n = -k for some positive integer k
      cases k with k,
      { -- assume n = -k for some positive integer k
        cases k with k,
        { -- assume n = -k for some positive integer k
          cases k with k,
          { -- assume n = -k for some positive integer k
            cases k with k,
            { -- assume n = -k for some positive integer k
              cases k with k,
              { -- assume n = -k for some positive integer k
                cases k with k,
                { -- assume n = -k for some positive integer k
                  cases k with k,

end
