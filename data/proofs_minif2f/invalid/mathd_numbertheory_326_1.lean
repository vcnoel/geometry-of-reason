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

  -- 1 / (n + 1) = 1 / 10
  rw [h₀, div_eq_iff_mul_eq],
  -- (n + 1) * (n - 1) * n = 720
  rw [mul_assoc, mul_comm (n - 1) (n + 1)],
  -- (n + 1) * (n - 1) * n = 720
  rw [mul_comm n (n - 1)],
  -- (n - 1) * (n + 1) * n = 720
  rw [mul_comm (n - 1) (n + 1)],
  -- (n - 1) * (n + 1) * n = 720
  rw [mul_assoc, mul_comm (n - 1) (n + 1)],
  -- (n - 1) * n * (n + 1) = 720
  rw [mul_assoc, mul_comm (n - 1) n],
  -- (n - 1) * n * (n + 1) = 720
  rw [mul_comm (n - 1) n],
  --
end
