import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2019_p21
  (z : ℂ)
  (h₀ : z = (1 + complex.I) / real.sqrt 2) :
  (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, (1 / z^(k^2))) = 36 :=
begin

  -- We need to calculate the two sums.
  -- We can do this by calculating the value of each sum individually.
  -- We can then multiply the two sums together to get the final result.

  -- First, let's calculate the first sum.
  have h₁ : (∑ k in finset.Icc 1 12, (z^(k^2))) = (z^1 + z^4 + z^9 + z^16),
  by {calc
        (∑ k in finset.Icc 1 12, (z^(k^2))) =
          ∑ k in finset.range 4, (z^(k^2)) : by {apply finset.sum_congr, apply finset.Icc_eq_range, apply nat.succ_le_succ, apply nat.succ_le_succ, apply nat.succ_le_succ, apply nat.succ_le_succ}
       ... = z^1 + z^4 + z^9 + z^16 : by {simp}}

  -- Now, let's calculate the second sum.
  have h₂ : (∑ k in finset.Icc 1 12, (1 / z^(k^2))) = (1/z^1 + 1
end
