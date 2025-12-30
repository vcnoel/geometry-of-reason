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
  apply and.intro,
  { apply lt_two_pow,
    apply pow_two_pos,
    apply lt_one_pow,
    apply lt_two },
  { apply lt_one_pow,
    apply lt_two_pow,
    apply pow_two_pos,
    apply lt_one }

end
