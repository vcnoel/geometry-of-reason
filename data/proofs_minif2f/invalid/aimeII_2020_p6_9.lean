import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  have h₃ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / 25 * t (n - 2),
  { assume n h,
    rw [h₂, h₂],
    field_simp,
    exact h h,
    exact h h },
  have h₄ : ∀ n ≥ 3, t n = 5 * t (n - 1) / 25 * t (n - 2) + 1 / 25 * t (n - 2),
  { assume n h,
    rw [h₃],
    field_simp,
    exact h h },
  have h₅ : ∀ n ≥ 3, t n = 5 * t (n - 1) + 1 / 25 * t (n - 2),
  { assume n h,
    rw [h₄],
    field_simp,
    exact h h },
  have h₆ : ∀ n ≥ 3, t n = 5 * t (n - 1) + 1 / 25 * t (n - 2),
  { assume n h,
    rw [h₅],
   
end
