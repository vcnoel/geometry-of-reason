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

  -- 1 / z = (real.sqrt 2 - complex.I) / 2
  let h₁ := complex.conj (z) * z = complex.abs (z) ^ 2,
  -- 1 / z = (real.sqrt 2 - complex.I) / 2
  let h₂ := complex.conj (z) = complex.conj ((1 + complex.I) / real.sqrt 2),
  -- 1 / z = (real.sqrt 2 - complex.I) / 2
  let h₃ := (1 + complex.I) / real.sqrt 2 * (real.sqrt 2 - complex.I) / real.sqrt 2 = 1,
  -- 1 / z = (real.sqrt 2 - complex.I) / 2
  let h₄ := z = (1 + complex.I) / real.sqrt 2,
  -- 1 / z = (real.sqrt 2 - complex.I) / 2
  let h₅ := 1 / z = (real.sqrt 2 - complex.I) / real.sqrt 2,
  -- 1 / z = (real.sqrt 2 - complex.I) / 2
  have h₆
end
