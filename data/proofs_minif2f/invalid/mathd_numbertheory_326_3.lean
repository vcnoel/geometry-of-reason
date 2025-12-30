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

  -- 1. We are given that n * (n - 1) * (n + 1) = 720.
  -- 2. We know that n * (n - 1) * (n + 1) = 6 * 7 * 10.
  -- 3. Therefore, n = 10.
  rw h₀,
  rw mul_three_consecutive,
  have h₁ : (n + 1) = 10,
  by refl,
  exact h₁,

end
