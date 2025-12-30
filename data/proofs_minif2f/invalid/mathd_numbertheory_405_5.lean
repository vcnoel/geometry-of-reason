import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_405
  (a b c : ℕ)
  (t : ℕ → ℕ)
  (h₀ : t 0 = 0)
  (h₁ : t 1 = 1)
  (h₂ : ∀ n > 1, t n = t (n - 2) + t (n - 1))
  (h₃ : a ≡ 5 [MOD 16])
  (h₄ : b ≡ 10 [MOD 16])
  (h₅ : c ≡ 15 [MOD 16]) :
  (t a + t b + t c) % 7 = 5 :=
begin

  -- 1
  apply congr_arg (λ (x : ℕ), x % 7),
  -- 2
  rw [h₃, h₄, h₅],
  -- 3
  apply congr_arg (λ (x : ℕ), x % 7) (add_assoc (t a) (t b) (t c)),
  -- 4
  apply congr_arg (λ (x : ℕ), x % 7) (add_comm (t b) (t c)),
  -- 5
  apply congr_arg (λ (x : ℕ), x % 7) (add_assoc (t a) (t b) (t c)),
  -- 6
  apply congr_arg (λ (x : ℕ), x % 7) (add_assoc (t a) (t b) (t c)),
  -- 7
  apply congr_arg (λ (x : ℕ), x % 7) (add_assoc (t a) (t b) (t c)),
  -- 8
  apply congr_arg (λ (x : ℕ), x % 7) (add_assoc (t a) (t b) (t c)),
  -- 9
end
