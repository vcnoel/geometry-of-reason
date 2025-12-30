import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_43
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 7 = 4)
  (h₂ : f 6 = 3) :
  f 3 = 0 :=
begin

  let g : ℝ → ℝ := f,
  let h : ℝ → ℝ := h₀ ∘ f ∘ g,
  let i : ℝ → ℝ := f ∘ g,
  let j : ℝ → ℝ := g ∘ h,
  let k : ℝ → ℝ := h ∘ i,
  let l : ℝ → ℝ := i ∘ j,
  let m : ℝ → ℝ := j ∘ k,
  let n : ℝ → ℝ := k ∘ l,
  let p : ℝ → ℝ := l ∘ m,
  let q : ℝ → ℝ := m ∘ p,
  let r : ℝ → ℝ := p ∘ q,
  let s : ℝ → ℝ := q ∘ r,
  let t : ℝ → ℝ := r ∘ s,
  let u : ℝ → ℝ := s ∘ t,
  let v : ℝ → ℝ := t ∘ u,
  let w : ℝ → ℝ := u ∘ v,
  let x : ℝ → ℝ := v ∘ w,
  let y : ℝ → ℝ := w ∘ x,
  let z : ℝ → ℝ := x ∘ y,
  let a : ℝ → ℝ :=
end
