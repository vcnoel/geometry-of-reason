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

  -- Step 1: Simplify the given equation
  -- We are given that z = (1 + complex.I) / sqrt(2)
  -- So, we can substitute this value of z in the equation
  -- and simplify it

  have h₁ : (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, (1 / z^(k^2))) =
           (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, ((1 / z)^(k^2))),
  { rw [h₀] },

  have h₂ : (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, ((1 / z)^(k^2))) =
           (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, ((1 / ((1 + complex.I) / real.sqrt 2))^(k
end
