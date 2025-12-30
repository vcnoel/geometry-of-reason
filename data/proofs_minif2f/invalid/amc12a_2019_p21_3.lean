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

  let z := (1 + complex.I) / real.sqrt 2,
  have h₁ : ∑ k in finset.Icc 1 12, (z^(k^2)) = (1 + complex.I) ^ 12 / (real.sqrt 2) ^ 12,
  { have h₂ : ∀ k in finset.Icc 1 12, z ^ (k ^ 2) = (1 + complex.I) ^ k / (real.sqrt 2) ^ k,
    { intro k,
      cases k,
      { rw h₀,
        rw real.sqrt_pos,
        simp },
      { rw h₀,
        rw real.sqrt_pos,
        simp } },
    have h₃ : ∑ k in finset.Icc 1 12, (1 + complex.I) ^ k / (real.sqrt 2) ^ k = (1 + complex.I) ^ 12 / (real.sqrt 2) ^ 12,
    { have h₄ : ∀ k in finset.Icc 1 12, (1 + complex.I) ^ k / (real.sqrt 2) ^ k = (real.sqrt 2) ^ k * (1 + complex.I) ^
end
