import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_101
  (x : ℝ)
  (h₀ : x^2 - 5 * x - 4 ≤ 10) :
  x ≥ -2 ∧ x ≤ 7 :=
begin

  have h₁ : x^2 - 5 * x - 4 ≤ 10 → (x + 2) * (x - 7) ≤ 0,
  { rintros (x : ℝ) (h : x^2 - 5 * x - 4 ≤ 10);
    ring_nf;
    have h₂ : x^2 - 5 * x - 4 = (x + 2) * (x - 7),
    { ring },
    have h₃ : x^2 - 5 * x - 4 ≤ 10,
    { assumption },
    have h₄ : (x + 2) * (x - 7) ≤ 0,
    { exact h₂.trans h₃ },
    assumption },
  have h₅ : (x + 2) * (x - 7) ≤ 0 → x + 2 ≤ 0 ∧ x - 7 ≤ 0 ∨ x + 2 ≥ 0 ∧ x - 7 ≥ 0,
  { rintros (x : ℝ) (h : (x + 2) * (x - 7) ≤ 0);
    have h₆ : x + 2 ≤
end
