import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_132
  (x : ℝ)
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = x + 2)
  (h₁ : ∀ x, g x = x^2)
  (h₂ : f (g x) = g (f x)) :
  x = - 1/2 :=
begin

  have h3 : f (g x) = g (f x),
  { rw h₁,
    rw h₀,
    rw h₁,
    rw h₀ },
  have h4 : f (g x) = x^2 + 2,
  { rw h₁ },
  have h5 : g (f x) = (x + 2)^2,
  { rw h₀ },
  have h6 : (x + 2)^2 = x^2 + 4 + 4*x,
  { rw pow_add },
  have h7 : x^2 + 2 = x^2 + 4 + 4*x,
  { rw h4 at h5,
    rw h5 at h3,
    rw h3 at h4,
    rw h4 },
  have h8 : 2 = 4 + 4*x,
  { rw h7 },
  have h9 : 0 = 4 + 4*x,
  { rw h8 },
  have h10 : 0 = 4*x,
  { rw h9 },
  have h11 : 1 = x,
  { rw h10 },
  have h12 : x = - 1/
end
