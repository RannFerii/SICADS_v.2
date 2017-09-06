function notifyMe_notice(mensaje) {

  if (Notification) {

    if (Notification.permission !== "granted") {

    Notification.requestPermission()

    }
    var title = "Notificacion"
    var extra = {

    icon: "/img/SICADS.png",
    body: mensaje

    }

    var noti = new Notification( title, extra)
    noti.onclick = {
    // Al hacer click
    }
    noti.onclose = {
    // Al cerrar
    }
    setTimeout( function() { noti.close() }, 10000)
    }
}

function notifyMe_alert(mensaje) {

  if (Notification) {

    if (Notification.permission !== "granted") {

    Notification.requestPermission()

    }
    var title = "Alerta"
    var extra = {

    icon: "/img/alert.png",
    body: mensaje

    }

    var noti = new Notification( title, extra)
    noti.onclick = {
    // Al hacer click
    }
    noti.onclose = {
    // Al cerrar
    }
    setTimeout( function() { noti.close() }, 10000)
    }
}