import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  -- Calculate a and b in mod 10
  let a_mod_10 : ℤ := a % 10,
  let b_mod_10 : ℤ := b % 10,

  -- Calculate 2a and 2b in mod 10
  let two_a_mod_10 : ℤ := 2 * a_mod_10,
  let two_b_mod_10 : ℤ := 2 * b_mod_10,

  -- Calculate (a+b) in mod 10
  let a_plus_b_mod_10 : ℤ := (a_mod_10 + b_mod_10) % 10,

  -- Calculate (2a+b) in mod 10
  let two_a_plus_b_mod_10 : ℤ := (two_a_mod_10 + b_mod_10) % 10,

  -- From the given equations
  have h₃ : a_plus_b_mod_10 = 2 := by simp [h₁],
  have h₄ : two_a_plus_b_mod_10 = 1 := by simp [h₂],

  -- Since a+b mod 10 = 2, we have
  have h₅ : two_a_plus_b_mod_10 - a
end
