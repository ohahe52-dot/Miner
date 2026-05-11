#!/usr/bin/env sh
BU="https://dashboard.minet.vn"
echo ""
echo "=== Mint Mining Setup ===="
echo ""
printf "Email: "
read EM </dev/tty
[ -z "$EM" ] && echo "Email required." && exit 1
echo "Preparing..."

# Cài curl nếu chưa có
if [ -d "/data/data/com.termux/" ]; then
    pkg install -y curl >/dev/null 2>&1 || true
else
    command -v curl >/dev/null 2>&1 || { apt-get update -y >/dev/null 2>&1; apt install -y curl >/dev/null 2>&1; }
fi

# Lấy IP đúng cách
CI="$(curl -sf https://api.ipify.org 2>/dev/null)"
if [ -z "$CI" ]; then
    echo "Network error: Cannot detect IP"
    exit 1
fi
echo "Your IP: $CI"

# Mã hóa email và IP cho URL (dùng sed đơn giản hơn)
EE=$(printf "%s" "$EM" | sed 's/@/%40/g')
EI="$CI"

echo "Connecting to minet.vn..."
# Gọi API với user-agent hợp lệ
curl -fsSL -H "User-Agent: Mozilla/5.0" "$BU/api/minecoin/setup?email=$EE&ip=$EI&mode=dashboard" | sh
