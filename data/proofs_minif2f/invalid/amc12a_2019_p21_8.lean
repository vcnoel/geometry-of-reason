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

  -- Substitute the value of z into the equation.
  have h₁ : (1 / z^(k^2)) = (z^(k^2))^-1, by {
    rw h₀,
    rw pow_inv,
    rw pow_pow,
    rw pow_mul,
    rw pow_real_sqrt,
    ring,
  },
  -- Substitute h₁ into the equation.
  have h₂ : (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, (1 / z^(k^2))) = (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, (z^(k^2))^-1), by {
    rw h₁,
  },
  -- Use the fact that the sum of a geometric series is a + b^(n+1)/(b-1).
  have h₃ : (∑ k in finset.Icc 1 12, (z^(k^2))) * (∑ k in finset.Icc 1 12, (z^(k^2))^-1) = ((
end
