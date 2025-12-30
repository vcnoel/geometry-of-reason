import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_326
  (n : ℕ)
  (h₀ : (↑n - 1) * ↑n * (↑n + 1) = (720 : ℤ)) :
  (n + 1) = 10 :=
begin

  -- Assume (n + 1) = 10
  have h₁ : (n + 1) = 10,
  from rfl,

  -- Use the assumption to show that (n * (n + 1) * (n + 2)) = 720
  have h₂ : (n * (n + 1) * (n + 2)) = 720,
  from ((n * (n + 1) * (n + 2)) = 720).mpr (h₁),

  -- Use the assumption to show that (n * (n + 1) * (n + 2)) = (720 : ℤ)
  have h₃ : (n * (n + 1) * (n + 2)) = (720 : ℤ),
  from ((n * (n + 1) * (n + 2)) = (720 : ℤ)).mpr (h₁),

  -- Use the assumption to show that (n * (n + 1) * (n + 2)) = (720 : ℤ)
  have h₄ : (n * (n + 1) * (n + 2)) = (
end
