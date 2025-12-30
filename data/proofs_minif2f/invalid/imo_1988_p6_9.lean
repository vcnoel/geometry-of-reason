import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1988_p6
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : (a * b + 1) ∣ (a^2 + b^2)) :
  ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1) :=
begin

  have h₂ : (a * b + 1) > 0 := (mul_pos h₀.1 h₀.2).succ,
  have h₃ : (a^2 + b^2) > 0 := add_pos (pow_pos h₀.1 2) (pow_pos h₀.2 2),
  have h₄ : (a * b + 1) ∣ (a^2 + b^2) → ∃ (x : ℤ), (x * (a * b + 1) = a^2 + b^2),
  by {
    intros h,
    let x := (a^2 + b^2) / (a * b + 1),
    exact ⟨x, by { simp, ring }⟩
  },
  have h₅ : (a * b + 1) ∣ (a^2 + b^2) → ∃ (x : ℕ), (x * (a * b + 1) = a^2 + b^2),
  by {
    intros h,
    have h₆ : (a * b + 1) ∣ (a^2 + b^2) → �
end
