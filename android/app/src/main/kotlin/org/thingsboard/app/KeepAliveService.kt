package com.example.upande_sensors

import android.app.Service
import android.content.Intent
import android.os.Binder
import android.os.IBinder

class KeepAliveService: Service() {
  companion object {
    val binder = Binder()
  }

  override fun onBind(intent: Intent): IBinder {
    return binder
  }
}
