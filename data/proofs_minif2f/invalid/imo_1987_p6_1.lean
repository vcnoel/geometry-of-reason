import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p6
  (p : ℕ)
  (f : ℕ → ℕ)
  (h₀ : ∀ x, f x = x^2 + x + p)
  (h₀ : ∀ k : ℕ, k ≤ nat.floor (real.sqrt (p / 3)) → nat.prime (f k)) :
  ∀ i ≤ p - 2, nat.prime (f i) :=
begin

  intros i hi,
  apply h₀ (i + 1),
  rw [nat.floor_add_one, le_floor],
  rw [real.sqrt_div_mul, real.sqrt_mul_sqrt],
  rw [real.sqrt_add, real.sqrt_sub, real.sqrt_one],
  rw [real.add_div, real.div_div],
  norm_num,
  exact (real.sqrt_le_sqrt_iff.mp (real.sqrt_le_sqrt_add hi)).2,

end
