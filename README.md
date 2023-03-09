# ferro

Home media server


Storage management setup with [mergerfs](https://github.com/trapexit/mergerfs)

/etc/fstab configuration allowing plex scanning:
```
    #Disk 1
    UUID={{uuid}} /mnt/external-drive1 auto nosuid,nodev,nofail 0 0
    
    #Disk 2
    UUID={{uuid}} /mnt/external-drive2 auto nosuid,nodev,nofail 0 0

    #Disk (n)
    UUID={{uuid}} /mnt/external-drive(n) auto nosuid,nodev,nofail 0 0

    /mnt/external-drive*  /mnt/merged  fuse.mergerfs category.create=mfs,func.getattr=newest,fsname=mergerfs 0 0
    
    /opt/docker-services/plex/config/Library/Application\040Support/Plex\040Media\040Server/Logs /opt/docker-services/tautulli/plex-logs none bind 0 0
```