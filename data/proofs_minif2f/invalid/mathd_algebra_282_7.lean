import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_282
  (f : ℝ → ℝ)
  (h₀ : ∀ x, (¬ irrational x) → f x = abs (int.floor x))
  (h₁ : ∀ x, (irrational x) → f x = (int.ceil x)^2) :
  f (8^(1/3)) + f (-real.pi) + f (real.sqrt 50) + f (9/2) = 79 :=
begin

  apply (f (8^(1/3)) + f (-real.pi) + f (real.sqrt 50) + f (9/2)).symm,
  simp only [f],
  split_ifs,
  { simp only [h₀, h₀, h₀, h₀], },
  { simp only [h₁, h₁, h₁, h₁], },

end
