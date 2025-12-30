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

  apply finset.sum_congr rfl (λ k hk, _),
  apply finset.sum_congr rfl (λ k hk, _),
  { simp only [h₀, complex.I_pow, complex.I_one, pow_two, pow_real_sqrt, mul_one, one_pow],
    ring_nf, },
  { simp only [h₀, complex.I_pow, complex.I_one, pow_two, pow_real_sqrt, mul_one, one_pow],
    ring_nf, },

end
