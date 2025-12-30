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

  have h₂ := filter.eventually_all_at_top u h₁,
  obtain ⟨N, h₃⟩ := h₂ 9,
  have h₄ := h₃ (N + 1),
  have h₅ := h₄.symm,
  have h₆ := h₅.trans h₀ (N + 1),
  have h₇ := h₆.trans (congr_arg nnreal.sqrt),
  have h₈ := h₇.trans (add_comm x),
  have h₉ := h₈.trans (eq.symm h₅),
  have h₁₀ := h₉.trans (eq.refl (9 ^ 2)),
  have h₁₁ := h₁₀.trans (eq.refl (81)),
  have h₁₂ := h₁₁.trans (eq.refl (x + 81)),
  have h₁₃ := h₁₂.trans (eq.symm h₉),
  have h₁₄ := h₁₃.trans (eq.refl (nnreal.sqrt (x + 9))),
  exact h₁₄,

end
