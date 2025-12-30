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

  have h₁ := finset.Icc 1 12.sum (λ k, z^(k^2)),
  have h₂ := finset.Icc 1 12.sum (λ k, 1 / z^(k^2)),
  have h₃ : (z * (1 / z)) = 1,
  { rw z * (1 / z) = 1 },
  have h₄ : (∑ k in finset.Icc 1 12, z^(k^2)) * (∑ k in finset.Icc 1 12, 1 / z^(k^2)) = (∑ k in finset.Icc 1 12, z^(k^2)) * (∑ k in finset.Icc 1 12, (z^(k^2))⁻¹),
  { rw one_div },
  have h₅ : (∑ k in finset.Icc 1 12, z^(k^2)) * (∑ k in finset.Icc 1 12, z^(k^2)⁻¹) = (∑ k in finset.Icc 1 12, z^(k^2)) * (∑ k in fin
end
