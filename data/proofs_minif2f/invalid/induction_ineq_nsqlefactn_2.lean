import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_ineq_nsqlefactn
  (n : ℕ)
  (h₀ : 4 ≤ n) :
  n^2 ≤ n! :=
begin

  -- Assume n is greater than or equal to 4
  assume (h₁ : n ≥ 4),
  -- Case: n = 4
  cases n with _ _ _ _ _ _,
  { -- n = 4
    -- 4! = 24
    -- 4^2 = 16
    exact le_of_eq (by { rw [factorial, pow], refl }),
  },
  -- Case: n > 4
  { -- n > 4
    -- Use induction on n
    cases n with n ih,
    { -- n = 5
      -- 5! = 120
      -- 5^2 = 25
      exact le_of_eq (by { rw [factorial, pow], refl }),
    },
    -- Case: n > 5
    { -- n > 5
      -- Use induction hypothesis
      have ih : (n - 1)^2 ≤ (n - 1)!,
        from ih,

      -- Use properties of factorials
      have h₂ : n! = n * (n - 1)!,
        by { rw [factorial, factorial], refl },

      -- Use properties of powers
end
