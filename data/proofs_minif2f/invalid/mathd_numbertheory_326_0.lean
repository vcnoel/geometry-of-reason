import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_326
  (n : ℕ)
  (h₀ : (↑n - 1) * ↑n * (↑n + 1) = (720 : ℤ)) :
  (n + 1) = 10 :=
begin

  cases n,
  { simp [h₀, zpow_zero], },
  { have h₁ : (n - 1) * n * (n + 1) = (720 : ℤ),
      by { apply h₀, },
    have h₂ : (n - 1) * n * (n + 1) = (9 * n) * (n + 1),
      by { ring, },
    have h₃ : (720 : ℤ) = (9 * n) * (n + 1),
      by { apply h₂, },
    have h₄ : (n + 1) = 10,
      by { apply nat.succ_eq_succ, },
    { exact h₄, },
    },

end
