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

  have h₁ : 4 = 2^2,
  { rw [pow_two] },
  have h₂ : 2 ∣ 2^2,
  { exact two_dvd_pow_two },
  have h₃ : ∀ (m : ℕ), 2 ∣ 2^m,
  { intros m,
    exact two_dvd_pow_two },
  have h₄ : ∀ (m : ℕ), 2 ∣ (2^2)^m,
  { intros m,
    exact two_dvd_pow_two },
  have h₅ : ∀ (m : ℕ), 2 ∣ 4^m,
  { intros m,
    exact h₄ m },
  exact h₅ n,

end
