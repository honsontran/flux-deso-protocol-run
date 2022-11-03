events {
}
http {
  client_max_body_size 20m;

  server {
    server_name deso.app.runonflux.io;

    location / {
      proxy_pass http://fluxfrontend_deso:33446;
    }

    location /api/ {
      proxy_pass http://fluxbackend_deso:33445;
    }

    listen 31000;
    # listen 443 ssl;
    # ssl_certificate /etc/letsencrypt/live/server2.your.domain/fullchain.pem;
    # ssl_certificate_key /etc/letsencrypt/live/server2.your.domain/privkey.pem;
    # include /etc/letsencrypt/options-ssl-nginx.conf;
  }
}