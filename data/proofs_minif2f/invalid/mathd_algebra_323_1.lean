import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_323
  (σ : equiv ℝ ℝ)
  (h : ∀ x, σ.1 x = x^3 - 8) :
  σ.2 (σ.1 (σ.2 19)) = 3 :=
begin

  -- We start by applying σ.2 to 19.
  have h1 : σ.2 19 = 19^3 - 8, from h 19,
  -- Now we apply σ.1 to the result.
  have h2 : σ.1 (19^3 - 8) = (19^3 - 8)^3 - 8, from h _,
  -- Now we apply σ.2 to the result.
  have h3 : σ.2 ((19^3 - 8)^3 - 8) = ((19^3 - 8)^3 - 8)^3 - 8, from h _,
  -- We can simplify this to get the desired result.
  have h4 : σ.2 (σ.1 (σ.2 19)) = 3, from rfl,
  exact h4,

end
