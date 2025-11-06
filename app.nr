// app.nr
use dep::std;

fn main() {
    // zkPassport residency verification — prove country of residence without revealing address
    let country_of_residence = "JP"; // Example: Japan
    let allowed_region = "Asia";

    std::println("🏠 zkPassport Residency Verification dApp (Noir)");
    std::println("Checking regional compliance with residency proof...");

    // Simulate regional compliance check under ZK conditions
    let is_resident = match country_of_residence {
        "JP" | "TH" | "KR" | "SG" | "VN" => true,
        _ => false,
    };

    assert(is_resident, "Access denied: user not in allowed region");

    let zk_commitment = std::hash::pedersen([
        "zkPassport".to_string(),
        country_of_residence.to_string(),
        "ResidencyVerified".to_string()
    ]);

    std::println("✅ Residency verified using zkPassport circuit");
    std::println("🔐 ZK Proof Commitment: {}", zk_commitment);
}
