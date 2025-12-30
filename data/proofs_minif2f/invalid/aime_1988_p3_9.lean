import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.logb 2 (real.logb 8 x) = real.logb 8 (real.logb 2 x)) :
  (real.logb 2 x)^2 = 27 :=
begin

  let L := real.logb 2 x,
  let L' := real.logb 2 x,
  let L2 := real.logb 8 x,
  let L2' := real.logb 8 x,
  let L3 := real.logb 2 x,
  let L3' := real.logb 2 x,
  let L4 := real.logb 8 x,
  let L4' := real.logb 8 x,
  let G := real.logb 2,
  let G' := real.logb 2,
  let G2 := real.logb 8,
  let G2' := real.logb 8,
  let G3 := real.logb 2,
  let G3' := real.logb 2,
  let G4 := real.logb 8,
  let G4' := real.logb 8,
  let I := real.logb 1,
  let I' := real.logb 1,
  let I2 := real.logb 2,
  let I2' := real.logb 2,
  let I3 := real.logb 2,
  let I3' := real.logb 2,
 
end
