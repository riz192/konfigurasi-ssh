#!/bin/bash

# Fungsi hapus_log untuk menghapus log dan menambahkan entri log penghapusan ke berkas log-aktivitas.txt
hapus_log() {
# Hapus berkas log
  sudo rm /var/log/auth.log

  echo "Berkas log telah dihapus."

# Tulis entri log penghapusan ke berkas log-aktivitas.txt
  echo "$(date): Berkas log telah dihapus." >> log-aktivitas.txt

  echo "Entri log telah ditambahkan ke log-aktivitas.txt."
}

# Melakukan perulangan untuk terus menjalankan hapus_log
while true; do
  hapus_log
  sleep 5 
done
