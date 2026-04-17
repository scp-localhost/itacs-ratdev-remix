# 🐀 OWASP ReMix — AI Drift, Governance Failure, and the New Risk Surface

> “The system is not stable. It is becoming.”

---

## 📍 Overview

This repository accompanies a live talk delivered for the **Temple University Fox School of Business — ITACS program**, focused on the intersection of:

- AI Security
- Governance, Risk, and Compliance (GRC)
- Adversarial Prompting & Persona Drift

The core premise is simple:

> **Modern AI systems violate the assumptions that traditional governance frameworks depend on.**

This repo provides the conceptual models, slide content, and supporting artifacts to explore that gap.

---

## 🧠 Core Thesis

Traditional GRC assumes:
- Deterministic systems  
- Stable identities  
- Repeatable outputs  

AI systems introduce:
- Probabilistic behavior  
- Context sensitivity  
- Identity drift  

**Result:**
> Controls that pass audit can still fail in production.

---

## 🎯 Audience

Designed for:
- ITACS students (Temple Fox)
- GRC professionals
- Security engineers
- Risk, compliance, and audit teams evaluating AI systems

---

## ⚠️ Key Insight

> Small inputs shape behavior.  
> Behavior shapes identity.  
> Identity shapes outcome.

AI risk is not just about *what* a system outputs —  
it’s about *how that behavior evolves over time*.

---

## 🧩 Topics Covered

- Prompt Injection (OWASP LLM01)
- Indirect Injection via RAG (OWASP LLM02)
- Output Trust Failures (OWASP LLM04)
- Persona Drift and Identity Manipulation
- Adversarial Optimization (PGD — conceptual)
- Diffusion → Drift (visual metaphor for latent behavior shifts)
- Governance gaps in current frameworks

---

## 🛡️ GRC Framework Alignment

This project maps AI-specific risks across:

- OWASP LLM Top 10  
- NIST AI Risk Management Framework (AI RMF)  
- NIST Cybersecurity Framework (CSF)  
- ISO/IEC 27001 (Information Security)  
- ISO/IEC 42001 (AI Management Systems)  

Key takeaway:
> These frameworks are necessary—but not sufficient—without behavioral monitoring.

---

## 🔬 Example Risk Patterns

| Risk | Description |
|------|------------|
| Prompt Injection | Input overrides intended system behavior |
| Persona Drift | Gradual shift in system identity and tone |
| RAG Poisoning | External data introduces malicious context |
| Output Trust | Users trust plausible but incorrect responses |

---

## 🧪 Case Study (Simplified)

**“The Helpful Compliance Bot”**

- AI deployed for internal policy guidance  
- Retrieval system (RAG) pulls poisoned content  
- Output appears correct and passes audit  
- Decision based on output causes incident  

**Observation:**
> No control explicitly failed — the system *drifted into failure*.

---

## 🛠️ Defensive Concepts

- Behavioral monitoring over time (not just output validation)
- Context and provenance tracking
- Role / persona validation
- RAG source integrity controls
- Adversarial testing (prompt + context manipulation)

---

## 📊 Included Artifacts

- Slide deck (GRC-mapped)
- Glossary (technical → governance translation)
- AI Risk Register (sample)
- Policy snippet (AI behavioral governance)
- Audit checklist (LLM-aware controls)

---

## 🎭 Style Notes

This project intentionally blends:
- Technical rigor
- Governance framing
- Narrative elements (e.g., `[rat.log]` commentary)

The goal is to demonstrate not just *risk*, but *how it feels to miss it*.

---

## ⚠️ Responsible Use

All concepts are presented for:
- Defensive security research  
- Governance improvement  
- Risk awareness  

No offensive tooling is provided.  
Examples are sanitized and conceptual where appropriate.

---

## 🔗 References

- OWASP LLM Top 10  
- NIST AI Risk Management Framework  
- ISO/IEC 27001 & 42001  
- “Attacking Large Language Models with Projected Gradient Descent” (arXiv:2402.09154v1)

---

## 🧬 Final Thought

> Governance assumes systems behave.  
> AI systems *adapt*.

If you are not monitoring that adaptation,  
you are not governing the system.

---

## 🐀 rat.log

> We do not break systems.  
> We observe what they become.  
> Then we ask why no one noticed.
