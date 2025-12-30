import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  let s := finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60),
  have h1 : ∀ n ∈ s, 6 ∣ (4 * ↑n - (2 : ℤ)),
  { intros n hn,
    exact hn },
  have h2 : ∀ n ∈ s, 2 ∣ (4 * ↑n - (2 : ℤ)),
  { intros n hn,
    have h3 : 2 * (2 * ↑n - 1) = 4 * ↑n - 2,
    { rw [mul_assoc, mul_comm (2 * ↑n), mul_assoc, mul_comm (2 * ↑n), mul_assoc, mul_comm (2 * ↑n)],
      rfl },
    have h4 : 2 ∣ (2 * ↑n - 1),
    { exact hn },
    exact h4 },
  have h5 : ∀ n ∈ s, 6 ∣ (2 * (2 * ↑n - 1)),
  { intros n hn,
    have h6 : 2 * (2 * ↑n - 1) = 4 * ↑n - 2,

end
