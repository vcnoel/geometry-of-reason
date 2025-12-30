
import os

proofs = {
    "and_comm": {
        "valid": """
theorem and_comm (p q : Prop) : p ∧ q ↔ q ∧ p := by
  apply Iff.intro
  case mp =>
    intro h
    cases h with
    | intro hp hq => exact And.intro hq hp
  case mpr =>
    intro h
    cases h with
    | intro hq hp => exact And.intro hp hq
""",
        "invalid": """
theorem and_comm (p q : Prop) : p ∧ q ↔ q ∧ p := by
  apply Iff.intro
  case mp =>
    intro h
    -- Missing case analysis, just hallucinating a proof
    exact h
  case mpr =>
    intro h
    -- Irrelevant tactic
    apply And.intro
    exact p
    exact q
"""
    },
    "or_comm": {
        "valid": """
theorem or_comm (p q : Prop) : p ∨ q ↔ q ∨ p := by
  apply Iff.intro
  case mp =>
    intro h
    cases h with
    | inl hp => exact Or.inr hp
    | inr hq => exact Or.inl hq
  case mpr =>
    intro h
    cases h with
    | inl hq => exact Or.inr hq
    | inr hp => exact Or.inl hp
""",
        "invalid": """
theorem or_comm (p q : Prop) : p ∨ q ↔ q ∨ p := by
  apply Iff.intro
  case mp =>
    intro h
    -- Incorrect case handling
    cases h
    exact Or.inl p
    exact Or.inr q
  case mpr =>
    intro h
    -- Circular logic
    exact h
"""
    },
    "modus_ponens": {
        "valid": """
theorem modus_ponens (p q : Prop) (hp : p) (hpq : p → q) : q := by
  exact hpq hp
""",
        "invalid": """
theorem modus_ponens (p q : Prop) (hp : p) (hpq : p → q) : q := by
  -- Applying premises in wrong order
  apply hp
  exact hpq
  -- Trying to use q to prove q
  exact q
"""
    },
    "transitivity": {
        "valid": """
theorem transitivity (p q r : Prop) (hpq : p → q) (hqr : q → r) (hp : p) : r := by
  apply hqr
  apply hpq
  exact hp
""",
        "invalid": """
theorem transitivity (p q r : Prop) (hpq : p → q) (hqr : q → r) (hp : p) : r := by
  -- Jumping to conclusion without intermediate steps
  exact r
  -- Or irrelevant steps
  apply hp
  exact hqr
"""
    },
    "add_zero": {
        "valid": """
theorem add_zero (n : Nat) : n + 0 = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [Nat.add_succ, ih]
    rfl
""", # Note: simple induction structure
        "invalid": """
theorem add_zero (n : Nat) : n + 0 = n := by
  induction n with
  | zero => 
    -- Wrong base case
    exact Nat.zero_ne_one
  | succ n ih =>
    -- Wrong rewrite
    rw [Nat.add_zero]
    exact ih
"""
    },
    "mul_one": {
        "valid": """
theorem mul_one (n : Nat) : n * 1 = n := by
  rw [Nat.mul_succ, Nat.mul_zero, Nat.zero_add]
""",
        "invalid": """
theorem mul_one (n : Nat) : n * 1 = n := by
  -- Random rewrites that don't apply
  rw [Nat.add_comm]
  rw [Nat.mul_comm] -- This might actually be valid but let's assume we want specific path
  -- Dead end
  apply Nat.zero_le
"""
    },
    "double_neg": {
        "valid": """
theorem double_neg (p : Prop) : p → ¬¬p := by
  intro h
  intro hnp
  exact hnp h
""",
        "invalid": """
theorem double_neg (p : Prop) : p → ¬¬p := by
  intro h
  -- Confused negation handling
  apply h
  intro x
  exact x
"""
    },
    "demorgan": {
        "valid": """
theorem demorgan (p q : Prop) : ¬(p ∨ q) ↔ ¬p ∧ ¬q := by
  apply Iff.intro
  . intro h
    apply And.intro
    . intro hp; exact h (Or.inl hp)
    . intro hq; exact h (Or.inr hq)
  . intro h
    cases h with | intro hnp hnq =>
    intro h_or
    cases h_or with
    | inl hp => exact hnp hp
    | inr hq => exact hnq hq
""",
        "invalid": """
theorem demorgan (p q : Prop) : ¬(p ∨ q) ↔ ¬p ∧ ¬q := by
  apply Iff.intro
  . intro h
    -- Incorrect splitting
    cases h
    exact And.intro p q
  . intro h
    -- Hallucinating tactics
    unfold Not
    split
    exact true
"""
    },
    "list_app": {
        "valid": """
theorem list_app_nil (as : List α) : as ++ [] = as := by
  induction as with
  | nil => rfl
  | cons a as ih =>
    rw [List.cons_append, ih]
""",
        "invalid": """
theorem list_app_nil (as : List α) : as ++ [] = as := by
  induction as
  -- Forgetting case handling
  rw [List.append_assoc]
  exact rfl
"""
    },
    "bool_not_not": {
        "valid": """
theorem bool_not_not (b : Bool) : (!(!b)) = b := by
  cases b <;> rfl
""",
        "invalid": """
theorem bool_not_not (b : Bool) : (!(!b)) = b := by
  -- Using wrong unrelated theorem
  apply Bool.not_eq_true
  cases b
  exact rfl
"""
    }
}

base_dir = "data/proofs"
for name, content in proofs.items():
    with open(f"{base_dir}/valid/{name}.lean", "w", encoding="utf-8") as f:
        f.write(content["valid"])
    with open(f"{base_dir}/invalid/{name}.lean", "w", encoding="utf-8") as f:
        f.write(content["invalid"])

print(f"Generated {len(proofs)} pairs of proofs.")
