import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  -- rewrite h₁ to make x and y appear only once
  have h₃ : x * y + x + y = 71 := by {rw h₁},
  
  -- rewrite h₂ to make x and y appear only once
  have h₄ : x^2 * y + x * y^2 = 880 := by {rw h₂},
  
  -- square h₃
  have h₅ : (x * y + x + y)^2 = 71^2 := by {rw h₃, ring},
  
  -- expand h₅
  have h₆ : x^2 * y^2 + 2 * x^2 * y + 2 * x * y^2 + x^2 + 2 * x * y + y^2 = 5041 := by {rw h₅},
  
  -- rewrite h₆ using h₄
  have h₇ : x^2 * y^2 + x^2 * y + x * y^2 + x^2 + 2 * x * y + y^2 = 5041 := by {rw h₆, rw h₄},
  
  -- factor h�
end
