import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  let a' := a / b, let b' := b / c, let c' := c / a,
  have h₁ := by {
    have h₂ := (a^2 / b^2 + b^2 / c^2 + c^2 / a^2) * (a^2 * b^2 * c^2),
    have h₃ := by {
      have h₄ := (a^2 * b^2 * c^2) * (a^2 / b^2 + b^2 / c^2 + c^2 / a^2),
      have h₅ := by {
        have h₆ := (a^2 * b^2 * c^2) * (a^2 / b^2 + b^2 / c^2 + c^2 / a^2),
        have h₇ := by {
          have h₈ := (a^2 / b^2) * (a^2 * b^2 * c^2),
          have h₉ := by {
            have h₁₀ := (a^2 * b^2) * (a^2 / b^2),
            have h₁₁
end
