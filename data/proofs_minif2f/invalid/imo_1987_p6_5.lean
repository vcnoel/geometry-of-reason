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
  let s := nat.floor (real.sqrt (p / 3)),
  have h₁ : s ≥ 2, from le_of_lt_of_le (by norm_num) (by norm_num),
  have h₂ : ∀ x, x ≤ s → f x = x^2 + x + p, from λ x hx, h₀ x,
  have h₃ : ∀ x, x ≤ s → x ≠ 0 → x ≠ 1 → nat.prime (f x),
  from λ x hx hx', h₀ x (nat.lt_floor_add_one hx),
  have h₄ : ∀ x, x ≤ s → x ≠ 1 → nat.prime (x + 1),
  from λ x hx hx', h₃ x hx hx' (ne_of_lt (lt_add_one hx)),
  have h₅ : ∀ x, x ≤ s → nat.prime (x + 1) → nat.prime (f x),
  from λ x hx hx', (h₃ x hx hx' (ne_of_lt (lt_add_one hx))).2,
  have h₆ : ∀ x, x ≤ s → nat.prime (x + 1) → nat.pr
end
