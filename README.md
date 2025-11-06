# README.md
# zkPassport Residency Verification dApp (Noir)

## Overview
This example demonstrates a **zkPassport residency verification** mechanism written in **Noir**, used to prove a user's country of residence without revealing their actual address or city.  
The goal is to achieve **privacy-preserving compliance** — confirming that a user lives within an allowed region while keeping personal data confidential.

## Installation
1. Install Noir:
   curl -L https://noir-lang.org/install | bash
2. Create a new Noir project:
   noir new zkpassport_residency
3. Replace the contents of `src/main.nr` with the code from `app.nr`.

## Run
   noir run

## Expected Output
🏠 zkPassport Residency Verification dApp (Noir)  
Checking regional compliance with residency proof...  
✅ Residency verified using zkPassport circuit  
🔐 ZK Proof Commitment: 0xb45e...

## Notes
- This example follows zkPassport principles, enabling **region-based access** without revealing specific user data.  
- In real-world scenarios, a user's residency would be proven via off-chain verification and provided as a ZK proof to a smart contract.  
- Ideal for region-locked DeFi participation, compliance-restricted airdrops, or zkKYC integration.  
- Built with **Noir**, the language powering private and verifiable logic in the **Aztec** network.  
- Can be extended to include city-level commitments, multiple residency tiers, or proof of dual residency with Merkle aggregation.  
