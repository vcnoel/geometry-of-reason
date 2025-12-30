import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_405
  (S : finset ℕ)
  (h₀ : ∀ x, x ∈ S ↔ 0 < x ∧ x^2 + 4 * x + 4 < 20) :
  S.card = 2 :=
begin

  rw finset.card_eq_univ_iff_forall,
  intros x hx,
  simp only [finset.mem_univ] at hx,
  obtain ⟨hx₀, hx₁⟩ := h₀ x hx,
  cases hx₀,
  { exact absurd hx₀ (not_lt_zero x)},
  { have hx₂ : x^2 + 4*x + 4 < 20, from hx₁,
    have hx₃ : 0 < x, from hx₀,
    have hx₄ : 0 < x^2, from pow_pos hx₃ 2,
    have hx₅ : 4*x + 4 < 20, from add_pos hx₃ (mul_pos hx₃ hx₂),
    have hx₆ : x^2 < 16, from sub_pos hx₂ hx₅,
    have hx₇ : 0 < x^2 + 4*x + 4, from add_pos hx₄ hx₅,
    have hx₈ : 0 < x^2 + 4*x + 4 ∧ x^2 + 4*x + 4 < 20, from and.intro hx₇ hx₂,
    exact absurd hx₈ (not_and_imp hx
end
