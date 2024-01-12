#!/bin/bash

while true; do
    echo -e "\nMenu Pilihan:"
    echo "1. Kirim Permintaan HTTP"
    echo "0. Exit"

    read -p "Pilih menu (0-1): " choice

    case $choice in
        1)
            read -p "Masukkan URL/Endpoint: " url
            read -p "Pilih Metode HTTP (GET/POST/PUT/DELETE): " method

            case $method in
                GET)
                    curl $url | jq .
                    ;;
                POST)
                    read -p "Masukkan data JSON: " data
                    curl -X POST -H "Content-Type: application/json" -d "$data" $url | jq .
                    ;;
                PUT)
                    read -p "Masukkan data JSON: " data
                    curl -X PUT -H "Content-Type: application/json" -d "$data" $url | jq .
                    ;;
                DELETE)
                    curl -X DELETE $url | jq .
                    ;;
                *)
                    echo "Metode HTTP tidak valid. Pilih antara GET, POST, PUT, atau DELETE."
                    ;;
            esac
            ;;
        0)
            exit
            ;;
        *)
            echo "Pilihan tidak valid. Masukkan nomor dari 0 hingga 1."
            ;;
    esac
done

