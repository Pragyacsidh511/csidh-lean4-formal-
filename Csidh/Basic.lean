import Mathlib.Data.ZMod.Basic

/-! # CSIDH Foundation - Montgomery Curves over Fp -/

/-- Montgomery curve: By² = x³ + A*x² + x over finite field ZMod p -/
structure MontgomeryCurve (p : ℕ) [Fact p.Prime] where
  /-- Curve parameter A -/
  A : ZMod p
  deriving Repr

/-- Check if point (x,y) lies on curve E -/
def onCurve {p} [Fact p.Prime] (E : MontgomeryCurve p) (x y : ZMod p) : Prop :=
  y^2 = x^3 + E.A * x^2 + x
