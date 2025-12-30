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

  apply eq_of_eq_on_univ (λ x, _),
  intros x,
  have h1 : σ.1 (σ.2 19) = (19^3 - 8) - 8,
  { rw h },
  have h2 : σ.1 (σ.2 19) = 437 - 8,
  { rw h1 },
  have h3 : σ.1 (σ.2 19) = 429,
  { rw h2 },
  have h4 : σ.2 (σ.1 (σ.2 19)) = σ.2 429,
  { rw h3 },
  have h5 : σ.2 429 = 3,
  { norm_num },
  exact h4,

end
