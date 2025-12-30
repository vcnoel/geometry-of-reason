import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_2dvd4expn
  (n : ℕ)
  (h₀ : n ≠ 0) :
  2 ∣ 4^n :=
begin

  have h₁ : ∀ m : ℕ, 2 ∣ 2 * m,
  { intro m,
    apply dvd_of_dvd_mul_left },
  have h₂ : ∀ m : ℕ, 2 ∣ 2 * 2 * m,
  { intro m,
    apply dvd_of_dvd_mul_left },
  have h₃ : ∀ m : ℕ, 2 ∣ 2 * 2 * 2 * m,
  { intro m,
    apply dvd_of_dvd_mul_left },
  have h₄ : ∀ m : ℕ, 2 ∣ 2 * 2 * 2 * 2 * m,
  { intro m,
    apply dvd_of_dvd_mul_left },
  have h₅ : ∀ m : ℕ, 2 ∣ 2 * 2 * 2 * 2 * 2 * m,
  { intro m,
    apply dvd_of_dvd_mul_left },
  have h₆ : ∀ m : ℕ, 2 ∣ 2 * 2 * 2 * 2 * 2 * 2 * m,
  { intro m,
    apply dvd_of_dvd_mul_left },
  have h₇ : ∀ m : ℕ
end
