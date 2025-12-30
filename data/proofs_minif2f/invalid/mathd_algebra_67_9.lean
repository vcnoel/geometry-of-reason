import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_67
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = 5 * x + 3)
  (h₁ : ∀ x, g x = x^2 - 2) :
  g (f (-1)) = 2 :=
begin

  -- f(-1) = 5*(-1) + 3 = -2
  have f_neg1 : f (-1) = 5 * (-1) + 3 := by simp [h₀],
  -- f(-1) = -2
  have f_neg1_val : f (-1) = -2 := by simp [f_neg1],
  -- g(-2) = (-2)^2 - 2 = 2
  have g_neg2 : g (-2) = (-2)^2 - 2 := by simp [h₁],
  -- g(-2) = 2
  have g_neg2_val : g (-2) = 2 := by simp [g_neg2],
  -- g(f(-1)) = g(-2) = 2
  have g_f_neg1 : g (f (-1)) = g (-2) := by simp [f_neg1_val],
  -- g(f(-1)) = 2
  have g_f_neg1_val : g (f (-1)) = 2 := by simp [g_neg2_val],
  -- g(f(-1)) = 2
  have g_f_neg1_eq : g (f (-
end
