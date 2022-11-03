{
    admin off
    auto_https off
}

:33446 {
    file_server
    try_files {path} index.html

    header Access-Control-Allow-Methods "GET, PUT, POST, DELETE, OPTIONS"
    header Access-Control-Allow-Origin "*"
    header Content-Security-Policy "
      default-src 'self';
      connect-src 'self'
        deso.app.runonflux.io:*
        fluxbackend_deso:*
        fluxfrontend_deso:*
        api.bitclout.com bitclout.com:*
        bithunt.bitclout.com pulse.bitclout.com https://altumbase.com
        api.bitpop.dev
        deso.run:* api.deso.run:*
        localhost:*
        explorer.bitclout.com:*
        https://api.blockchain.com/ticker
        https://api.blockchain.com/mempool/fees
        https://ka-f.fontawesome.com/
        bitcoinfees.earn.com
        api.blockcypher.com 
        amp.bitclout.com
        api.bitclout.green api.bitclout.blue
        api.bitclout.navy
        api.testwyre.com
        api.sendwyre.com
        https://videodelivery.net
        https://upload.videodelivery.net;
      script-src 'self' https://cdn.jsdelivr.net/npm/sweetalert2@10
        https://kit.fontawesome.com/070ca4195b.js https://ka-f.fontawesome.com/;
      style-src 'self' 'unsafe-inline' https://fonts.googleapis.com;
      img-src 'self' data: i.imgur.com images.deso.org images.bitclout.com quickchart.io arweave.net *.arweave.net cloudflare-ipfs.com;
      font-src 'self' https://fonts.googleapis.com
        https://fonts.gstatic.com https://ka-f.fontawesome.com;
      frame-src 'self' localhost:*
        identity.bitclout.com identity.bitclout.blue identity.bitclout.green
        identity.deso.org identity.deso.blue identity.deso.green
        https://www.youtube.com
        https://player.vimeo.com
        https://www.tiktok.com
        https://giphy.com
        https://open.spotify.com
        https://w.soundcloud.com
        https://player.twitch.com
        https://clips.twitch.com
        pay.testwyre.com
        pay.sendwyre.com
        https://iframe.videodelivery.net;"
}
