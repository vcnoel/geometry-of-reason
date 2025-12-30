import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  have h₂ : x ≠ 0 ∧ 3 + 1 / x = 7 / x,
  from and.intro h₀ h₁,

  have h₃ : 3 * x + 1 = 7,
  by {
    have h₄ : 3 * x + 1 / x = 7 / x,
    from h₂.right,

    have h₅ : 3 * x + 1 = 7 * x,
    by {
      have h₆ : 1 / x = 7 - 3 * x,
      from h₄.symm.sub 3 * x,

      have h₇ : 1 = 7 * x - 3 * x^2,
      from h₆.mul x,

      have h₈ : 3 * x^2 - 7 * x + 1 = 0,
      by {
        have h₉ : 3 * x^2 - 7 * x + 1 = 0,
        from h₇.sub 1,

        exact h₉,
      },
    },

    have h₁₀ : x = 2,
    from solve x : ℝ, 3 * x^2 -
end
