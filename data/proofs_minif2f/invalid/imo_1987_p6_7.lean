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

  intro i,
  intro hi,
  apply h₀,
  apply nat.floor_le_of_le,
  apply div_le_self,
  apply real.sqrt_le_sqrt,
  apply real.sqrt_pos,
  apply pow_two_pos,
  apply pow_pos,
  apply pow_two_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos,
  apply pow_pos
end
