import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  rw [← n.succ_ne_zero, ← n.succ_ne_zero],
  by_contradiction h,
  by_cases h₁ : 2 ^ n % 3 = 0,
  { have h₂ : (2 ^ n - 1) % 3 = 0,
    by { rw [sub_eq_zero, h₁] },
    have h₃ : (2 ^ n - 1) % 3 = (2 ^ n) % 3 - 1 % 3,
    by { rw [sub_eq_sub, mod_sub] },
    have h₄ : (2 ^ n) % 3 = 2 % 3,
    by { rw [mod_pow, mod_2] },
    have h₅ : 2 % 3 = 2,
    by { rw [mod_eq_of_not_lt (λ h₆, h₆ 2)] },
    have h₆ : 1 % 3 = 1,
    by { rw [mod_eq_of_not_lt (λ h₇, h₇ 1)] },
    have h₇ : (2 ^ n - 1) % 3 = 2 - 1,
    by
end
