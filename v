[Interface]
PrivateKey = 7oUxQGPJJRY42ouKb+aLnS3T6zUopmtETLPRd2y40M8=
Address = 100.73.88.117/32
DNS = 8.8.8.8, 8.8.4.4
Jc = 3
Jmin = 10
Jmax = 50
S1 = 145
S2 = 74
H1 = 487373706
H2 = 1723639871
H3 = 2019659362
H4 = 267678224

[Peer]
PublicKey = bDnX9o32tY5x1srbthgkoYoUKFCuohq/lKvhOvxNICc=
PresharedKey = CFkuDPu9xbEmJ1GqIPOHGT5mgy1v34t66/ZzQjKB+2Q=
Endpoint = 5.189.203.33:39962
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25


sudo podman run -d \
  --name amnezia-vpn \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  --network=host \
  -v /home/pi/vpn/awg.conf:/etc/amnezia/amneziawg/wg0.conf:Z \
  --restart unless-stopped \
  docker.io/bubnovd/amnezia-wg:latest \
  awg-quick up wg0
