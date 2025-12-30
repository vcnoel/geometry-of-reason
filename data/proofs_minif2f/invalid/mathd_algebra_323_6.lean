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

  calc
  σ.2 (σ.1 (σ.2 19)) = σ.2 (σ.1 433) : by { apply h, simp },
  _ = σ.2 (433^3 - 8) : by { apply h, simp },
  _ = 3 : by { apply pow_three, simp },

end
