import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  let f : finset ℕ → finset ℕ := λ s,
    finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) s,
  let g : finset ℕ → finset ℕ := λ s,
    finset.filter (λ n, 6 ∣ (4 * ↑n)) s,
  let h : finset ℕ → finset ℕ := λ s,
    finset.filter (λ n, 6 ∣ (4 * ↑n - 6)) s,
  have hf : ∀ s, f s = g s ∪ h s, by { intro s, ext1 n, split,
    { intro h1, have h2 := zpow_dvd_zpow_of_dvd (6 : ℤ) 2 (4 * n - 2),
      have h3 := zpow_dvd_zpow_of_dvd (6 : ℤ) 2 (4 * n),
      have h4 := zpow_dvd_zpow_of_dvd (6 : ℤ) 2 (4 * n - 6),
      show 6 ∣ 4 * n - 2 → 6 ∣ 4 * n
end
