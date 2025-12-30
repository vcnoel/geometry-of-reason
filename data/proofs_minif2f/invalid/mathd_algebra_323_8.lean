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

  have h2 := h 19,
  have h3 := σ.2 (σ.1 (19^3 - 8)),
  have h4 := (pow_add 3 19) - 8,
  have h5 := h4,
  have h6 := (pow_add 3 19) - 8,
  have h7 := h6,
  have h8 := h7,
  have h9 := h8,
  have h10 := (pow_add 3 19) - 8,
  have h11 := h10,
  have h12 := (pow_add 3 19) - 8,
  have h13 := h12,
  have h14 := (pow_add 3 19) - 8,
  have h15 := h14,
  have h16 := (pow_add 3 19) - 8,
  have h17 := h16,
  have h18 := (pow_add 3 19) - 8,
  have h19 := h18,
  have h20 := (pow_add 3 19) - 8,
  have h21 := h20,
  have h22 := (pow_add 3 
end
