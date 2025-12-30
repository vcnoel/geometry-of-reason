import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p3
  (S : finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n)) :
  S.card = 1 :=
begin

  cases H : S,
  { exact 0 },
  { let A := finset.image (λ (n : ℕ), n^2 + 2 - 3 * n) H,
    have HA : A = S,
    { ext1 n,
      simp only [finset.mem_image, h₀],
      intros h₁ h₂,
      have h₃ : n^2 - 3 * n + 2 = 0,
      { rwa [h₁] at h₂ },
      exact absurd h₃ (ne_of_gt (by norm_num : 1 < 2)) },
    have hA : A.card = 1,
    { let f : ℕ → ℕ := λ (n : ℕ), n^2 + 2 - 3 * n,
      have hf : function.injective f,
      { intros x y hxy,
        have h₁ : f (x^2 - 3 * x + 2) = f (y^2 - 3 * y + 2),
        { rwa [hxy] },
        have h₂ : x^2 - 3 * x + 2 = y^2 - 3 * y + 2,
        {
end
