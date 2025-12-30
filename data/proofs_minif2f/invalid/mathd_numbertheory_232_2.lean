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

  let g : ℤ → ℤ
  := λ n, if n ∈ {0, 1, 2,..., 30}, then n;
    else if n ∈ {3, 4, 5,..., 30}, then 3;
    else if n ∈ {6, 7, 8,..., 30}, then 5;
    else if n ∈ {9, 10, 11,..., 30}, then 29;
  in
  g,
  let i : ℤ → ℤ
  := λ n, if n ∈ {0, 1, 2,..., 30}, then n;
    else if n ∈ {3, 4, 5,..., 30}, then 3;
    else if n ∈ {6, 7, 8,..., 30}, then 6;
    else if n ∈ {9, 10, 11,..., 30}, then 9;
  in
  i,
  let k : ℤ → ℤ
  := λ n, if n ∈ {0, 1, 2,..., 30}, then n;
    else if n ∈ {3, 4
end
