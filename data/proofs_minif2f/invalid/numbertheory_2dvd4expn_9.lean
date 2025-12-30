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

  -- Since 4 = 2^2, we have 4^n = (2^2)^n = 2^(2*n)
  have h₁ : 4^n = 2^(2*n),
  { rw pow_two_pow,
    refl },
  -- By the property of divisibility, if a ∣ b and b ∣ c, then a ∣ c
  have h₂ : 2 ∣ 2^(2*n),
  { apply pow_div,
    refl },
  -- Now, since 2 ∣ 2^(2*n) and 2^(2*n) = 4^n, we have 2 ∣ 4^n
  exact h₂.trans h₁

end
