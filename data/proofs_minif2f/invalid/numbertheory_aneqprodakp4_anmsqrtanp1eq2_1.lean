import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_aneqprodakp4_anmsqrtanp1eq2
  (a : ℕ → ℝ)
  (h₀ : a 0 = 1)
  (h₁ : ∀ n, a (n + 1) = (∏ k in finset.range (n + 1), (a k)) + 4) :
  ∀ n ≥ 1, a n - real.sqrt (a (n + 1)) = 2 :=
begin

  intro n,
  induction n with n ih,
  { rw h₁,
    have := (finset.range 1).card,
    have := finset.prod_const (finset.range 1) (λ _, 1),
    have := finset.prod_const (finset.range 1) (λ _, 4),
    simp at *,
    have := by linarith,
    simp at *,
    rw h₀ at *,
    rw h₀ at *,
    have := by linarith,
    simp at *,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,
    have := by linarith,
    rw h₁ at *,

end
