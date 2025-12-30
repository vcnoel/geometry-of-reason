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

  obtain ⟨x, hx⟩ := h₀,
  have hx' : x^2 ≠ 0,
  { intro h,
    have h'' : (x^2)^2 + a * (x^2)^3 + b * (x^2)^2 + a * (x^2) + 1 = 0,
    { rw [pow_two, pow_three, pow_two, pow_one, one_mul] at hx,
      rw [hx] },
    have h''' : x^4 + a * x^3 + b * x^2 + a * x + 1 = 0,
    { rw [hx'] at h'' },
    contradiction },
  have h₁ : x^4 + a * x^3 + b * x^2 + a * x + 1 = (x^2 + a/2)^2 + (b/2)^2,
  { have h₃ : x^2 + a/2 ≠ 0,
    { intro h,
      have h₄ : (x^2 + a/2)^2 + (b/2)^2 = 0,
      { rw [h] },
      have h₅ : x^4 +
end
