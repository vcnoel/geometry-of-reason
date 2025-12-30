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

  apply f_le_0,
  have (h₀ _ _ _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  apply f_le_0,
  have (h₀ 7 _ _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  have (h₀ 6 _ _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  apply f_le_0,
  have (h₀ 5 _ _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  apply f_le_0,
  have (h₀ 4 _ _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  have (h₀ 3 _ _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  have (h₀ 2 _ _ _ _ _ _ _ _ _) = h₁ * h₂,
  have (h₀ 1 _ _ _ _ _ _ _ _) = h₁ * h₂,
  have (h₀ 0 _ _ _ _ _ _ _ _) = h₁ * h₂,
  have (h₁ * h₂) < f 3,
  have (h
end
