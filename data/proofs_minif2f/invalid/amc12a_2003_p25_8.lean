import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p25
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : 0 < b)
  (h₁ : ∀ x, f x = real.sqrt (a * x^2 + b * x))
  (h₂ : {x | 0 ≤ f x} = f '' {x | 0 ≤ f x}) :
  a = 0 ∨ a = -4 :=
begin

  have h₃ : a = 0 ∨ a = -4 ∨ a = 2,
  { apply disj_or_dne,
    { intro h,
      { intro h',
        { apply h₁,
          apply h₁,
          apply h₁,
          { apply h₁,
            apply h₁,
            { apply h₁,
              { apply h₁,
                apply h₁,
                apply h₁,
                { apply h₁,
                  apply h₁,
                  apply h₁,
                  apply h₁,
                  { apply h₁,
                    apply h₁,
                    apply h₁,
                    apply h₁,
                    apply h₁,
                    { apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,
                      apply h₁,

end
