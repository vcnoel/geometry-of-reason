import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1973_p3
  (a b : ℝ)
  (h₀ : ∃ x, x^4 + a * x^3 + b * x^2 + a * x + 1 = 0) :
  4 / 5 ≤ a^2 + b^2 :=
begin

  obtain ⟨x, rfl⟩ := h₀,
  have h₁ : x^2 + a * x + 1 ≠ 0,
  { intro h,
    have : x^4 + a * x^3 + b * x^2 + a * x + 1 = (x^2 + a * x + 1) * (x^2 - a * x + 1),
    { ring },
    have h₂ : x^2 - a * x + 1 = 0,
    { rw h at this,
      exact this ▸ rfl },
    have h₃ : x^2 = a * x,
    { rw [h₂, h₂] },
    have h₄ : x = a,
    { have h₅ : x ≠ 0,
      { contrapose! h₃,
        exact (sub_nonneg.2 h) },
      have h₆ : x^2 ≠ 0,
      { contrapose! h₃,
        exact (sub_nonneg.2 h) },
      have h₇ : a^2 ≠ 0,
      { contrapose! h₃,
        exact (sub_nonneg.2 h) },
     
end
