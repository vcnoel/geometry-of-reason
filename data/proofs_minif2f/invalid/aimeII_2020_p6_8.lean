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

  apply induction_on 2020,
  { rw [h₀, h₁], },
  { assume n,
    apply div_eq_iff_mul_eq,
    { rw [h₂],
      have h₃ : 5 * t (n - 1) + 1 = (25 * t (n - 2) + 1) * 5,
      { ring, },
      have h₄ : 25 * t (n - 2) + 1 = 5 * (5 * t (n - 2) + 1) / 5,
      { ring, },
      have h₅ : 5 * t (n - 1) + 1 = 5 * (5 * t (n - 2) + 1) / 5,
      { rw h₄, },
      have h₆ : 25 * t (n - 2) = 25 * (5 * t (n - 3) + 1) / 25,
      { rw h₂, },
      have h₇ : 5 * t (n - 2) = 5 * (5 * t (n - 3) + 1) /
end
