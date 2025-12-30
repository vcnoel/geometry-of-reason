import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_31
  (x : nnreal)
  (u : ℕ → nnreal)
  (h₀ : ∀ n, u (n + 1) = nnreal.sqrt (x + u n))
  (h₁ : filter.tendsto u filter.at_top (𝓝 9)) :
  9 = nnreal.sqrt (x + 9) :=
begin

  have : ∀ n, u n ≤ 9,
  { intro n,
    induction n with n IH,
    { refl },
    { calc u (n + 1) = nnreal.sqrt (x + u n) : h₀ (n + 1)
     ... ≤ nnreal.sqrt (x + 9) : by simp [IH],
     ... ≤ 9 : by simp [h₀ (n + 1)] } },
  have h₂ : filter.t
end
