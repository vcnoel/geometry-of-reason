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

  have h₃ : {x | 0 ≤ f x} = {x | 0 ≤ real.sqrt (a * x^2 + b * x)},
  { rw h₂,
    congr,
    ext1 x,
    simp only [h₁],
    split,
    { intro h,
      have h' : a * x^2 + b * x ≥ 0,
      { apply le_of_eq,
        simp only [h],
        congr,
        { rw h₁ },
        { simp only [real.sqrt_nonneg] } },
      have h'' : x^2 ≥ 0,
      { apply le_of_eq,
        simp only [h'],
        congr,
        { rw ← add_nonneg,
          { simp only [h'] },
          { simp only [real.sqrt_nonneg] } },
        { simp only [h'] } },
      exact le_of_eq h'' },
    { intro h,
      have h' : a * x^2 + b * x ≥ 0,
      { apply le_of_eq,
        simp only [h],
        congr,
        { rw h₁ },
        { simp only [real.sqrt_nonneg] } },
      have h'' : x^2 ≥ 0
end
