import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p2
  (x : ℝ)
  (h₀ : (10:ℝ)^x * 100^(2 * x) = 1000^5) :
  x = 3 :=
begin

  -- 100 = 10^2
  have h₁ : 100 = (10:ℝ)^2 := by { rw [pow_two, pow_two, pow_two] },
  -- 1000 = 10^3
  have h₂ : 1000 = (10:ℝ)^3 := by { rw [pow_three, pow_three, pow_three] },
  -- (10^x) * (10^(2x)) = 10^(3x)
  have h₃ : (10:ℝ)^x * (10:ℝ)^(2*x) = (10:ℝ)^(3*x) := by { rw [pow_mul, pow_mul] },
  -- (10^x) * (100^(2x)) = (10^x) * ((10^2)^(2x))
  have h₄ : (10:ℝ)^x * (100:ℝ)^(2*x) = (10:ℝ)^x * ((10:ℝ)^2)^(2*x) := by { rw [h₁] },
  -- (10^x) * ((10^2)^(2x)) = (10^x)
end
