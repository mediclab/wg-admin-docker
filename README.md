<p align="center"><img src="https://raw.githubusercontent.com/mediclab/wg-admin-docker/master/img/wg-admin-dark.svg" width="400"></p>
<h3 align="center">Wireguard Admin Panel</h3>

## Fast install
* Clone repository
* Copy example **.env** to production

```
cp .env.example .env
```
* Edit **APP_URL** and **WG_HOST** environments
* Init the application
```
make init
```

Congratulations! Your Wireguard VPN is working!