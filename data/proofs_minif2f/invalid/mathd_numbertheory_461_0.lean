import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_461
  (n : ℕ)
  (h₀ : n = finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7))) :
  (3^n) % 8 = 1 :=
begin

  have h₁ := finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7)) = finset.card (finset.Icc 1 7),
  have h₂ := finset.card (finset.Icc 1 7) = 7,
  have h₃ := 3^7 % 8 = 1,
  have h₄ := (3^7 % 8) % 8 = 1 % 8,
  have h₅ := (3^7) % 8 = 1,
  have h₆ := 3^7 = 2187,
  have h₇ := (2187) % 8 = 7,
  have h₈ := 7 ≠ 1,
  have h₉ := (3^7) % 8 ≠ 1,
  have h₁₀ := 3^7 % 8 ≠ 1,
  have h₁₁ := (3^n) % 8 ≠ 1,
  have h₁₂ := ∀ (m : ℕ), m ≠ 7 → (3^m) % 8 ≠ 1,
  have h
end
