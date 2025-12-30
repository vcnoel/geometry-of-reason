import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_192
  (q e d : ℂ)
  (h₀ : q = 11 - (5 * complex.I))
  (h₁ : e = 11 + (5 * complex.I))
  (h₂ : d = 2 * complex.I) :
  q * e * d = 292 * complex.I :=
begin

  have h₃ := h₀,
  have h₄ := h₁,
  have h₅ := h₂,
  have h₆ : q * e * d = (11 - (5 * complex.I)) * (11 + (5 * complex.I)) * (2 * complex.I),
  {
    exact (h₀ * e * d).symm,
  },
  have h₇ : q * e * d = (11 * 11 - (5 * complex.I * 5 * complex.I)) * (2 * complex.I),
  {
    exact (h₄ * h₃ * d).symm,
  },
  have h₈ : q * e * d = (11 * 11 - 25 * complex.I * complex.I) * (2 * complex.I),
  {
    exact h₇,
  },
  have h₉ : q * e * d = (121 - 25 * complex.I * complex.I) * (2 * complex.I),
  {
    exact h₈,
  },
  have h₁₀ : q * e * d = (121 - 25 * 1) * (2 * complex.I),
  {
    exact (h
end
