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

  cases n with n,
  { cases h₀ with h₀ },
  { have h₁ : 4^(n-1) = 2^(2*(n-1)),
    by { rw [pow_two, pow_two, pow_two, pow_two] },
    have h₂ : 2 * 4^(n-1) = 2^(2*(n-1) + 1),
    by { rw h₁ },
    have h₃ : 2 * 4^(n-1) = 2 * 2^(2*(n-1)),
    by { rw h₂ },
    have h₄ : 2 * 4^(n-1) = 2^(2*(n-1) + 1),
    by { rw h₃ },
    have h₅ : 2^(2*(n-1) + 1) = 2^1 * 2^(2*(n-1)),
    by { rw [pow_one, pow_mul] },
    have h₆ : 2^(2*(n-1) + 1) = 2 * 2^(2*(n-1)),
    by { rw h₅ },
    have h₇ :
end
