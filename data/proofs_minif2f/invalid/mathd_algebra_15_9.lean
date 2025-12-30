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

  apply h₀ 2 6,
  exact and.intro (nat.pos 2) (nat.pos 6),

end
