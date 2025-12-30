import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_15
  (s : ℕ → ℕ → ℕ)
  (h₀ : ∀ a b, 0 < a ∧ 0 < b → s a b = a^(b:ℕ) + b^(a:ℕ)) :
  s 2 6 = 100 :=
begin

  apply h₀,
  split,
  apply Nat.pos_of_gt,
  apply Nat.pos_of_gt,

end
