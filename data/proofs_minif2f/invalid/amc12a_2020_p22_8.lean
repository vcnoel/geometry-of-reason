import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p22
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 5 ∣ n ∧ nat.lcm 5! n = 5 * nat.gcd 10! n) :
  S.card = 1 :=
begin

  let p := ∃ (n : ℕ), n ∈ S,
  have hp := p.elim (λ h, h) (λ h, false.elim (λ n hn, h₀ n hn)),
  have hS := finset.exists_mem_of_card_pos (S.card.pos),
  have hS := hS.elim (λ h, h) (λ h, false.elim (λ n hn, h₀ n hn)),
  exact hp,

end
