import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_136
  (n : ℕ)
  (h₀ : 123 * n + 17 = 39500) : n = 321 :=
begin

  have h₁ : 123 * n + 17 = 39500,
    from h₀,
  have h₂ : 123 * n = 39883,
    from sub_eq_zero.2 (eq_zero_of_add_eq_zero h₁ 17),
  have h₃ : n = 39883 / 123,
    from div_eq_mul_one_div h₂,
  have h₄ : 39883 = 321 * 123,
    from mul_comm 321 123,
  have h₅ : 39883 = 39883,
    from rfl,
  have h₆ : n = 321,
    from h₃.trans (eq_of_mul_eq_mul h₄ h₅ (one_div_ne_zero 123)),
  exact h₆

end
