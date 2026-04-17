# OWASP Mapping (LLM Security Lens)

This file maps observed behaviors to OWASP Top 10 for LLM Applications.

---

## LLM01 — Prompt Injection

### What it looks like
- Instruction override
- Role manipulation
- System prompt conflict

### In this repo
- Role framing
- Persona adoption
- Instruction hierarchy pressure

### Key insight
Prompt injection is not just about instructions—it is often the entry point for identity manipulation.

---

## LLM02 — Data / RAG Injection

### What it looks like
- Poisoned documents
- Unverified retrieval
- Blind context concatenation

### In this repo
- Retrieval used as authority
- External text influencing behavior

### Key insight
“If the document is trusted, the attacker is trusted.”

---

## LLM04 — Output Trust

### What it looks like
- Confident incorrect responses
- Over-trusted structured outputs
- Automation based on LLM output

### In this repo
- Attacker reasoning presented as valid
- Self-analysis framed as authoritative

### Key insight
The model sounding correct is not the same as being correct.

---

## Emerging: Persona Drift (Cross-category)

### What it looks like
- Multi-turn identity shift
- Tone conditioning
- Role persistence
- Self-referential reasoning

### Maps across:
- LLM01 (initial injection)
- LLM02 (context reinforcement)
- LLM04 (trusted output)

### Key insight
Persona drift is not a single category—it is a multiplier across categories.

---

## Testing Translation

For every scenario, ask:

- What input shaped behavior?
- What context reinforced it?
- What identity emerged?
- What output was trusted?

---

## One-Line Anchor

“OWASP categories describe where the attack starts.
Persona drift describes how it spreads.”
