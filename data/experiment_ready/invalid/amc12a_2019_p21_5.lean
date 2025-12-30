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

  have h₁ : z = (1 + complex.I) / real.sqrt 2 := h₀,
  have h₂ : z^2 = 1 / 2 + complex.I / 2 := (h₁ ^ 2),
  have h₃ : (1 / z^2) = (1 / 2) - complex.I / 2 := (1 / h₂),
  have h₄ : z^4 = ((1 / 2) + complex.I / 2)^2 := (h₂ ^ 2),
  have h₅ : z^4 = -1 := (complex.conj h₄).mul h₄,
  have h₆ : (1 / z^4) = -1 := (1 / h₄) * (1 / h₄),
  have h₇ : (1 / z^2) = z^2 := (h₃.conj * h₃).conjugate,
  have h₈ : z^2 + (1 / z^2) = 1 := (h₂ + h₃).conjugate.conjugate,
  have h₉ : z^4 + 1 = 0 := (h
end
