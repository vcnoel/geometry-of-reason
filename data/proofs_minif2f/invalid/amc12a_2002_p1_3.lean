import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p1
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6))
  (h₁ : fintype (f ⁻¹' {0})) :
  ∑ y in (f⁻¹' {0}).to_finset, y = 7 / 2 :=
begin

  have h₂ : ∀ x ∈ (f⁻¹' {0}), f x = 0,
  { assume x hx,
    have h₃ : f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6),
      by rw h₀,
    have h₄ : (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6) = 0,
      by rw h₃; simp [hx],
    exact h₄ },
  have h₅ : f 5 = 0,
  { have h₆ : 5 ∈ (f⁻¹' {0}),
      by simp [h₁],
    exact h₂ 5 h₆ },
  have h₇ : f 7 = 0,
  { have h₈ : 7 ∈ (f⁻¹' {0}),
      by simp [h₁],
    exact h₂ 7 h₈ },
  have h₉ : ∑ y in (f⁻¹' {0}).to_finset, y = ∑
end
