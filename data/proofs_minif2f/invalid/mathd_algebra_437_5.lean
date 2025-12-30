import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  -- Solve the first equation for x
  have h_x : x = - ∛(45),
    from h₀,

  -- Solve the first equation for x
  have h_x' : x = -5,
    from h_x,

  -- Solve the first equation for x
  have h_x'' : x = -5,
    from h_x',

  -- Solve the second equation for y
  have h_y : y = - ∛(101),
    from h₁,

  -- Solve the second equation for y
  have h_y' : y = -4.472135955,
    from h_y,

  -- Solve the second equation for y
  have h_y'' : y = -4.472135955,
    from h_y',

  -- Solve the first inequality
  have h_n : n < -4,
    from h₂,

  -- Solve the second inequality
  have h_n' : n < -4,
    from h_n,

  -- Solve the first inequality
  have h_n'' : n < -4,
    from h_n',

  -- Solve the second inequality
  have h_n''' : n ≤ -4,
    from h_n'',

  --
end
