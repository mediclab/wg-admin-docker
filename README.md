<p align="center"><img src="https://raw.githubusercontent.com/mediclab/wg-admin-docker/master/img/wg-admin-dark.svg" height="100" width="400"></p>
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
* Create admin user
```
make create-admin
```

Congratulations! Your Wireguard VPN is working!

<p align="center"><img src="https://raw.githubusercontent.com/mediclab/wg-admin-docker/master/img/wg-admin.png" height="472" width="822"></p>