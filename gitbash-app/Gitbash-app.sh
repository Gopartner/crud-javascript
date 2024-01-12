#!/bin/bash

## ========== Front of function color ==========
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


menu_item="Compare local & remote repo (git fetch)"
colorized_menu_item=$(color "$menu_item" 2)
echo -e "Menu Item: $colorized_menu_item"

## ========== endfor function color ==========

while true; do
    echo -e "\nTarget yang Tersedia:"
    echo "  1  : View status (git status)"
    echo "  2  : Stage changes (git add)"
    echo "  3  : View commit log (git log)"
    echo "  4  : Compare local & remote repo (git fetch)"
    echo "  5  : Merge branches (git merge)"
    echo "  6  : Create a new branch (git branch)"
    echo "  7  : Switch to a branch (git checkout)"
    echo "  8  : Finishing - Add, commit, and push"
    echo "  9  : Discard changes in working directory (git restore)"
    echo " 10  : Create and apply patches (git diff and git apply)"
    echo " 11  : Undo last commit (git reset)"
    echo "  0  : Exit"

    read -p "Masukkan nomor target: " choice

    case $choice in
        1) git status ;;
        2)
            echo -e "\nStaging changes..."
            git add .
            echo -e "Changes staged. Ready for commit.\n" ;;
        3) git log ;;
        4) git fetch ;;
        5) git merge ;;
        6) git branch ;;
        7) git checkout ;;
        8)
          git add . && git commit -m "commit " && git push -u origin Master
            echo -e "\nFinishing - Add, commit, and push..."
            # Tambahkan perintah sesuai kebutuhan
            echo -e "Finishing complete.\n" ;;
        9) git restore ;;
       10)
            echo -e "\nCreating and applying patches..."
            # Tambahkan perintah sesuai kebutuhan
            echo -e "Patches applied.\n" ;;
       11) git reset ;;
        0)
            clear
            echo -e "Terima kasih! Program berakhir.\n"
            break ;;
        *) echo -e "Pilihan tidak valid. Silakan masukkan nomor yang benar.\n" ;;
    esac
done

