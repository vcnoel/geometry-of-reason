import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_77
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, f x = x^2 + a * x + b)
  (h₂ : f a = 0)
  (h₃ : f b = 0) :
  a = 1 ∧ b = -2 :=
begin

  let G := {a, b} in
  let X := G / {a, b} in
  let f_X : X → ℝ := fun x : X => f x / x;
  let g_X : X → ℝ := fun x : X => x / x;
  let f_X_inv : X → X := fun x : X => x / x;
  let g_X_inv : X → X := fun x : X => x / x;
  let H : X → X := fun x : X => {a / x, b / x};
  let H_inv : X → X := fun x : X => {a / x, b / x};
  let G_inv : X → X := fun x : X => {a^(-1) * x, b^(-1) * x};
  let H_inv_inv : X → X := fun x : X => {a^(-1) * x, b^(-1) * x};
  let G_inv_inv : X → X := fun x : X => {a^(-1) * x, b^(-1) * x};
  let H_inv_inv_inv : X → X := fun x : X => {
end
