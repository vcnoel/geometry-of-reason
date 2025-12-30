import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_232
  (x y z : zmod 31)
  (h₀ : x = 3⁻¹)
  (h₁ : y = 5⁻¹)
  (h₂ : z = (x + y)⁻¹) :
  z = 29 :=
begin

  let G = GCD 31 3⁻¹ 5⁻¹ 29;
  let A = {x ∈ ℤⁿ | x = 3⁻¹ |} ∪ {x ∈ ℤⁿ | x = 5⁻¹ |};
  let B = {x ∈ ℤⁿ | x = 29 |};
  let C = {x ∈ ℤⁿ | x = 0 |};
  let D = {x ∈ ℤⁿ | x = 0 |};
  let E = {x ∈ ℤⁿ | x = 1 |};
  let F = {x ∈ ℤⁿ | x = 2 |};
  let G = {x ∈ ℤⁿ | x = 3 |};
  let H = {x ∈ ℤⁿ | x = 4 |};
  let I = {x ∈ ℤⁿ | x = 5 |};
  let J = {x ∈ ℤⁿ | x = 6 |};
  let K = {x ∈ ℤⁿ | x = 7 |};
  let L = {x ∈ ℤⁿ | x = 
end
