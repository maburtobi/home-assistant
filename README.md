**A guidance and documentation for zero to ready-to-use Home Assistant system.**
**_Panduan dan dokumentasi sistem Home Assistant dari nol hingga siap pakai._**

Home assistant is a software that widely used for managing and coordinating IoT devices.
_ID: Home assistant merupakan perangkat lunak yang umum digunakan untuk membantu mengelola dan mengordinasikan perangkat IoT._


Home Assistant (HA) merupakan perangkat lunak untuk otomasi rumah serta bersifat ''Open source'' yang mengutamakan kontrol dan privasi kepada pengguna. HA didukung oleh komunitas yang tersebar di seluruh dunia dan penggemar DIY. HA juga dapat dioperasikan pada Raspberry Pi atau server lokal.

Definitely will add several things later.
* Prequisite, system requirements, some interesting experience during experiment
* Review: what you want to try to achieve?
* how to install (step-by-step and bash script)
* Configuration


# Getting ready
## Install Home Assistant (HA) in Debian 11
We can use virtual machine or bare metal server for this.
Kita bisa menggunakan VM atau server fisik untuk instalasi HA.
```
wget https://raw.githubusercontent.com/maburtobi/home-assistant/main/install-ha-supervised-debian11.bash && \
bash install-ha-supervised-debian11.bash
```


After HA installation is completed, the system will reboot itself. Home Assistant needs several minutes to accomplish initial configuration and downloading some data automatically.<br>
So we just need to **wait around 30 minutes** until completed, depends on the internet bandwidth and system specifications.
>_Setelah instalasi HA selesai, VM/server terkait akan melakukan reboot. HA memerlukan beberapa menit untuk menyelesaikan pengaturan awal dan mengunduh beberapa data yg diperlukan secara otomatis.<br>
>Kita cukup menunggu **kurang lebih sekitar 30 menit** hingga selesai, tergantung dari kecepatan internet dan spek VM/server._


To access HA admin page, just type the Home Assistant's IP address with port 8123 in browser and press ENTER.
Here are the example: `<ip-address>:<port>`  -->  `192.168.1.2:8123`
>_Untuk mengakses laman admin pada HA, cukup ketik alamat ip server HA dengan pot 8123 di browser lalu tekan ENTER._<br>
_Contoh: `<ip-address>:<port>`  -->  `192.168.1.2:8123`_


We can refresh the web page periodically to check if the automatic initial configuration has done.
>_Kita bisa me-refresh halaman web secara berkala untuk mengecek apakah proses pengaturan awal sudah selesai._
