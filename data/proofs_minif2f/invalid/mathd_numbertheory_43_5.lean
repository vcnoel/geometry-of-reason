import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  let f : ℕ → Prop := λ n, 15^n ∣ 942!,
  let g : ℕ → Prop := λ n, 15^n ∣ 942! / 15,
  have h1 : ∀ n, f n → g (n + 1),
  { intro n,
    assume h1 : f n,
    have h2 : 15^n ∣ 942! / 15,
    { apply nat.div_dvd_of_dvd,
      exact h1 },
    show g (n + 1),
    { apply nat.div_dvd_of_dvd,
      exact h2 } },
  have h2 : ∀ n, g n → g (n + 1),
  { intro n,
    assume h2 : g n,
    show g (n + 1),
    { apply nat.div_dvd_of_dvd,
      apply nat.div_dvd_of_dvd,
      exact h2 } },
  have h3 : ∀ n, f n → g n,
  { intro n,
    assume h3 : f n,
    apply nat.div_dvd_of_dvd,
    exact h3 },
  have h4 : ∀ n, g n → g (n +
end
