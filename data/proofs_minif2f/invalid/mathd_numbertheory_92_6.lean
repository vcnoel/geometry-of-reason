import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_92
  (n : ℕ)
  (h₀ : (5 * n) % 17 = 8) :
  n % 17 = 5 :=
begin

  -- Assume n is an integer.
  assume n : ℤ,
  -- Assume n ≡ 8 (mod 17).
  assume hn : n ≡ 8 (mod 17),
  -- We can rewrite the congruence as n = 17k + 8 for some k.
  have h₁ : ∃ (k : ℤ), n = 17 * k + 8,
    by { refine exists.intro (hn / 17), exact h₀ },
  -- We can rewrite the congruence as n = 17k + 8 for some k.
  have h₂ : n = 17 * k + 8,
    by { obtain ⟨k, h⟩ := h₁, exact h },
  -- We can rewrite the congruence as n = 17k + 8 for some k.
  have h₃ : n = 17 * k + 8,
    by { exact h₂ },
  -- Now, we can use the fact that 17 divides n - 8.
  have h₄ : 17 ∣ (n - 8),
    by { have h₅ : n - 8 = 17 * k, from h₃.sub
end
