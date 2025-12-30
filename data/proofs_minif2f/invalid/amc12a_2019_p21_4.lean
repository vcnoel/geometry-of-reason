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

  have h₁ : ∀ k in finset.Icc 1 12, z^(k^2) ≠ 0,
  {
    intro k,
    assume h : z^(k^2) = 0,
    have h₂ : k^2 ≠ 0,
    {
      intro h₃,
      have h₄ : k = 0,
      {
        intro h₅,
        have h₆ : k^2 = 0,
        {
          rw h₅,
        },
        exact h₃ h₆,
      },
      have h₇ : k ≠ 0,
      {
        intro h₈,
        have h₉ : z ≠ 0,
        {
          intro h₁₀,
          have h₁₁ : (1 + complex.I) / real.sqrt 2 = 0,
          {
            rw h₁₀,
          },
          have h₁₂ : 1 + complex.I = 0,
          {
            rw h₁₁,
            congr,
          },
          have h₁₃ : 1 = 0,
          {
            rw h₁₂,
            simp,
          },
          exact absurd h₁₃ (ne_of_gt (by trivial)),
        },

end
