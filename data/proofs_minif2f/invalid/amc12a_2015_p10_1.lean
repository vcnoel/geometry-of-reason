import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2015_p10
  (x y : ℤ)
  (h₀ : 0 < y)
  (h₁ : y < x)
  (h₂ : x + y + (x * y) = 80) :
  x = 26 :=
begin

  rw [←sub_sub, h₂],
  refine
    ⟨λ (h : x - y = 80 - x * y),
        by_contradiction
          (λ h_c,
            have h₃ : x * y = 80 - (x - y),
            from sub_eq_add_neg (sub_eq_sub (sub_eq_sub h₂ (x * y)) x y),
            have h₄ : x * y = 80 - (x - y) = 80 - x + y,
            from add_comm y (x - y),
            have h₅ : x * y = 80 - x + y = (80 - x) + y,
            from add_assoc _ _ _,
            have h₆ : x * y = (80 - x) + y = 80 - x + y,
            from add_comm _ (80 - x),
            have h₇ : 0 < x * y,
            from mul_pos h₀ h₀,
            have h₈ : 0 < 80 - x,
            from sub_pos_of_lt h₁,
            have h₉ : x * y < 80 - x,
            from lt_sub h₇ h�
end
