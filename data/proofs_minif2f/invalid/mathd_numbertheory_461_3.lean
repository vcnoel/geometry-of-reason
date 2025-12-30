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

  have h₁ : finset.Icc 1 7 = {1, 2, 3, 4, 5, 6, 7},
  { simp },
  have h₂ : finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7) = {1, 3, 5, 7},
  { simp },
  have h₃ : finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7)) = 4,
  { simp [h₂] },
  have h₄ : n = 4,
  { simp [h₀, h₃] },
  have h₅ : (3^4) % 8 = 1,
  { norm_num },
  exact h₅

end
