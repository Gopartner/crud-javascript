# shebang tidak di perlukan

# color_functions.sh
# Fungsi untuk memberikan warna pada string
color() {
  local text="$1"
  local color_code="$2"

  case $color_code in
    "1") echo -e "\e[32m$text\e[0m" ;;  # Hijau
    "2") echo -e "\e[33m$text\e[0m" ;;  # Kuning
    "3") echo -e "\e[34m$text\e[0m" ;;  # Biru
    "4") echo -e "\e[35m$text\e[0m" ;;  # Ungu
    "5") echo -e "\e[36m$text\e[0m" ;;  # Cyan
    "6") echo -e "\e[31m$text\e[0m" ;;  # Merah
    "7") echo -e "\e[31;43m$text\e[0m" ;;  # Merah dengan latar belakang kuning
    "8") echo -e "\e[1;34m$text\e[0m" ;;  # Biru terang
    "9") echo -e "\e[1;37m$text\e[0m" ;;  # Putih terang
    "10") echo -e "\e[1;30m$text\e[0m" ;; # Abu-abu terang
    "11") echo -e "\e[41m$text\e[0m" ;;   # Latar belakang merah
    "0") echo -e "\e[36m$text\e[0m" ;;   # Cyan
    *) echo "$text" ;;
  esac
}

