import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_284
  (a b : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9)
  (h₁ : 10 * a + b = 2 * (a + b)) :
  10 * a + b = 18 :=
begin

  apply @eq.trans _ _ (10 * a + b) (2 * (a + b)),
  apply eq.symm,
  apply @eq.symm _ _ (2 * (a + b)),
  apply @eq.trans _ _ (2 * (a + b)) (2 * a + 2 * b),
  apply @eq.trans _ _ (2 * a + 2 * b) (2 * a + 2 * b),
  apply @eq.symm _ _ (2 * a + 2 * b),
  apply @eq.trans _ _ (2 * a + 2 * b) (2 * a + 2 * b),
  apply @eq.trans _ _ (2 * a + 2 * b) (a + b + a + b),
  apply @eq.trans _ _ (a + b + a + b) (2 * (a + b)),
  apply @eq.trans _ _ (2 * (a + b)) (2 * (a + b)),
  apply @eq.trans _ _ (2 * (a + b)) (2 * (a + b)),
  apply @eq.trans _ _ (2 * (a + b)) (2 * (
end
