import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2004_p3
  (x y : ℕ)
  (h₀ : 2^x * 3^y = 1296) :
  x + y = 8 :=
begin

  have h₁ : 1296 = 2^5 * 3^3 := by norm_num,
  have h₂ : 2^x * 3^y = 2^5 * 3^3,
  from h₀.trans h₁,

  have h₃ : x = 5,
  from (eq.trans (pow_le_one_iff _ _).mpr h₂) (pow_le_one_iff _ _).mp (le_refl 5),

  have h₄ : y = 3,
  from (eq.trans (pow_le_one_iff _ _).mp h₂) (pow_le_one_iff _ _).mpr (le_refl 3),

  show x + y = 8,
  by simp [h₃, h₄]

end
