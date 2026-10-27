# Hermes 12 SOUL.md Profiles Pack — v1.2

Paket ini berisi **12 file SOUL.md spesifik per profile**, termasuk profile CEO. Tambahan 12 file `AGENTS.md` hanyalah template SOP pendamping (opsional); **jangan mengira AGENTS.md akan otomatis diload dari folder profile**. Untuk SOP global atau project, tempatkan sesuai mekanisme context files Hermes di working directory yang digunakan setiap profile, atau jadikan skill.

## Layout
- `profiles/ai-ceo/SOUL.md` — pakai untuk **profile CEO yang sudah ada**, JANGAN buat CEO duplikat.
- `profiles/<11-agent>/SOUL.md` — pasang pada profile spesialis masing-masing.
- `registry.json` — daftar role dan jalur dokumen.
- `install_souls.sh` — installer copy aman dengan backup; default tidak overwrite.

## Install
Buka `hermes profile list` untuk mengecek profile dan nama active CEO.
```bash
# dari direktori hasil extract
bash install_souls.sh --ceo-home "$HOME/.hermes" 
# atau apabila CEO memakai named profile:
bash install_souls.sh --ceo-home "$HOME/.hermes/profiles/NAMA_PROFILE_CEO"
```
Installer memakai direktori default `~/.hermes/profiles/<slug>` bagi 11 spesialis. CEO dipasang ke path yang Anda tentukan. **Installer tidak membuat profile Hermes**, dan tidak menyalin apa pun ketika ada SOUL.md tujuan kecuali `--replace` dipilih (dengan backup). Buat profile lebih dulu melalui CLI `hermes profile create <slug>` dan sesuaikan nama bila berbeda. Pastikan gunakan sesi baru agar perubahan SOUL dimuat.

## Penting
SOUL adalah identitas dan karakter jangka panjang, bukan permission security, memory bersama, SOP detail, ataupun konfigurasi MCP. Pasang masing-masing ke profile home (`HERMES_HOME/SOUL.md`). `SOUL.md` tidak dimuat dari current working directory. Setiap agent harus punya home terpisah, karena profile berbagi memori bisa mengacaukan identitas. Batasi tool dengan konfigurasi/perizinan API, bukan prompt.

Rujukan: https://hermes-agent.nousresearch.com/docs/user-guide/profiles dan https://hermes-agent.nousresearch.com/docs/user-guide/features/context-files/
