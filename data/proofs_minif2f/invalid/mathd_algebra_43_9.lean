import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_43
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 7 = 4)
  (h₂ : f 6 = 3) :
  f 3 = 0 :=
begin

  let h : ℝ → ℝ := fun x : ℝ => (f x - a) * x - b,
  let g : ℝ → ℝ := fun x : ℝ => (f x - a) * 7 + (f x - b),
  let h' : ℝ → ℝ := fun x : ℝ => (f x - a) * 6 + (f x - b),
  let g' : ℝ → ℝ := fun x : ℝ => (f x - a) * 4 + (f x - b),
  let h'' : ℝ → ℝ := fun x : ℝ => (f x - a) * 5 + (f x - b),
  let h''' : ℝ → ℝ := fun x : ℝ => (f x - a) * 3 + (f x - b),
  let g''' : ℝ → ℝ := fun x : ℝ => (f x - a) * 2 + (f x - b),
  let h'''' : ℝ → ℝ := fun x : ℝ => (f x - a) * 1 + (f x - b),
  let g'''' : ℝ → ℝ := fun x : ℝ => (f x - a) * 1
end
