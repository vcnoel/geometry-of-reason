import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p15
  (k : ℕ)
  (h₀ : k = 2008^2 + 2^2008) :
  (k^2 + 2^k) % 10 = 6 :=
begin

  have h₁ : k % 10 = 6,
  { have h₂ : k % 2 = 0,
    { apply nat.mod_two_eq_zero_or_one,
      exact dec_trivial },
    have h₃ : k % 4 = 0,
    { have h₄ : 2008 % 4 = 0,
      { apply nat.mod_four_eq_zero_or_one,
        exact dec_trivial },
      have h₅ : 2^2008 % 4 = 0,
      { apply nat.mod_four_eq_zero_or_one,
        exact dec_trivial },
      have h₆ : (2008^2 + 2^2008) % 4 = 0,
      { apply nat.mod_four_eq_zero_or_one,
        exact dec_trivial },
      exact nat.mod_eq_of_add_eq_of_mod_eq h₆ h₄ h₅ },
    have h₇ : k % 10 = 6,
    { have h₈ : 2008 % 10 = 8,
      { apply nat.mod_ten_eq_zero_or_one_to_nine,
        exact dec_trivial },
      have h₉ : 2^2008 % 10 = 
end
