import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  let f : finset ℕ → ℕ := λ s, s.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))).card,
  let g : finset ℕ → ℕ := λ s, s.filter (λ n, 2 ∣ (2 * ↑n - (2 : ℤ))).card,
  have h1 : f = g, by {ext, simp},
  have h2 : ∀ n ∈ finset.range 60, 2 ∣ (2 * ↑n - (2 : ℤ)), by {intro n, simp},
  have h3 : f (finset.range 60) = g (finset.range 60), by {simp [h1, h2]},
  have h4 : f (finset.range 60) = 20, by {simp},
  have h5 : g (finset.range 60) = 20, by {simp [h3]},
  have h6 : f (finset.range 60) = g (finset.range 60), by {simp [h3]},
  have h7 : f = g, by {simp [h1]},
  have h8 : f (fin
end
