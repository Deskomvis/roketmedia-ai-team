# Hermes AI Marketing — 12 Agent Starter Pack (CEO + 11 Specialists)

## Desain
- **CEO = profile utama Hermes yang SUDAH ada**. Tidak membuat profile CEO kedua, tidak overwrite konfigurasi otomatis.
- **11 spesialis = profile terpisah** via `scripts/create_profiles.sh` (tinjau dahulu dan hindari duplikat).
- `roles/ai-ceo.md` menguatkan instruksi CEO Anda: DAG, delegation, SLA, blockers, approvals, evidence, biaya, risiko, callback.

## Instalasi yang aman
1. Backup konfigurasi profile utama Hermes.
2. Tempel atau gabungkan `roles/ai-ceo.md` ke system instructions **profile CEO yang sekarang**. Jangan menghapus aturan Owner yang sudah Anda gunakan.
3. Pasang `skills/marketing-ai-ceo/SKILL.md` ke direktori skill main profile sesuai instalasi Hermes Anda.
4. Periksa `scripts/create_profiles.sh` lalu buat 11 profile spesialis. Jika ada yang sudah dibuat, lewati profil itu; jangan jalankan ulang secara buta.
5. Pasang role prompts dari `roles/` dan skill spesialis ke profile masing-masing.
6. Sesuaikan `config/agent-registry.yaml` dengan profile names/routing aktual; itu **template deklaratif**, bukan file native Hermes yang otomatis diproses.
7. Hubungkan fitur delegasi sesuai dokumentasi dan versi Hermes Anda. Uji CEO → Product Hunter → CEO dengan tool read-only.
8. Bangun/enforce approval + durable task callbacks di backend Mission Control sebelum membolehkan publish, spend, messaging atau refund.

## Isi
- `roles/`: 12 role prompts (CEO + 11)
- `skills/`: 12 SKILL.md
- `contracts/`: schema untuk spesialis dan CEO
- `config/agent-registry.yaml`: template role routing
- `scripts/`: helper shell untuk membuat profil spesialis dan catatan CEO
- `examples/`: contoh handoff

## Batasan
Paket ini berisi file awal, **bukan konfigurasi Hermes native yang otomatis aktif**, dan tidak membuat dashboard, login, database, profile routes atau tool gateway. Perintah CLI dapat berbeda sesuai versi Hermes; periksa `hermes profile --help` di lingkungan Anda.

## Dokumentasi
- https://hermes-agent.nousresearch.com/docs/user-guide/profiles
- https://hermes-agent.nousresearch.com/docs/user-guide/features/delegation
- https://hermes-agent.nousresearch.com/docs/guides/work-with-skills
