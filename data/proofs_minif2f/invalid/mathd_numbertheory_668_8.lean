import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_668
  (l r : zmod 7)
  (h₀ : l = (2 + 3)⁻¹)
  (h₁ : r = 2⁻¹ + 3⁻¹) :
  l - r = 1 :=
begin

  rw [h₀, h₁],
  -- apply the definition of `zmod` to `l` and `r`
  let l_def := zmod_def l,
  let r_def := zmod_def r,

  -- simplify `l_def` and `r_def`
  have l_def_simp := zmod_def_zmod l,
  have r_def_simp := zmod_def_zmod r,

  -- apply `l_def_simp` and `r_def_simp` to the equation
  rw [l_def_simp, r_def_simp],

  -- simplify the equation
  have eq₁ := by {
    calc
      (2 + 3)⁻¹ - (2⁻¹ + 3⁻¹) = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ :
        by ring
      = (2 + 3)⁻¹ - 2⁻¹ - (2 + 3)⁻¹ :
        by ring
      = -2⁻¹ - (2 + 3)⁻¹ :
        by ring
      = -2⁻¹ - (2 + 3)⁻
end
