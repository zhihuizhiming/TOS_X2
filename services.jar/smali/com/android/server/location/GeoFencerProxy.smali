.class public Lcom/android/server/location/GeoFencerProxy;
.super Lcom/android/server/location/GeoFencerBase;
.source "GeoFencerProxy.java"


# static fields
.field private static final LOGV_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "GeoFencerProxy"

.field private static mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoFencer:Landroid/location/IGeoFencer;

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Landroid/location/IGeoFenceListener$Stub;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerBase;-><init>()V

    .line 58
    new-instance v0, Lcom/android/server/location/GeoFencerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeoFencerProxy$1;-><init>(Lcom/android/server/location/GeoFencerProxy;)V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 78
    new-instance v0, Lcom/android/server/location/GeoFencerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeoFencerProxy$2;-><init>(Lcom/android/server/location/GeoFencerProxy;)V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    .line 97
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/GeoFencerProxy;Landroid/location/IGeoFencer;)Landroid/location/IGeoFencer;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GeoFencerProxy;
    .param p1, "x1"    # Landroid/location/IGeoFencer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    return-object p1
.end method

.method private ensureGeoFencer()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-nez v2, :cond_0

    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 124
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    iget-object v2, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    if-nez v2, :cond_0

    .line 131
    const-string v2, "GeoFencerProxy"

    const-string v3, "Timed out. No GeoFencer connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return v1

    .line 124
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v2, "GeoFencerProxy"

    const-string v3, "Interrupted while waiting for GeoFencer"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/location/GeoFencerProxy;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/server/location/GeoFencerProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GeoFencerProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    .line 93
    :cond_0
    sget-object v0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencerProxy:Lcom/android/server/location/GeoFencerProxy;

    return-object v0
.end method


# virtual methods
.method public removeCaller(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/server/location/GeoFencerBase;->removeCaller(I)V

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    invoke-interface {v0, p1}, Landroid/location/IGeoFencer;->clearGeoFenceUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected start(Landroid/location/GeoFenceParams;)Z
    .locals 2
    .param p1, "geofence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v0, v1, p1}, Landroid/location/IGeoFencer;->setGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected stop(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v0, v1, p1}, Landroid/location/IGeoFencer;->clearGeoFenceIntent(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected stop(Landroid/location/GeoFenceParams;)Z
    .locals 2
    .param p1, "geofence"    # Landroid/location/GeoFenceParams;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/server/location/GeoFencerProxy;->ensureGeoFencer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GeoFencerProxy;->mGeoFencer:Landroid/location/IGeoFencer;

    iget-object v1, p0, Lcom/android/server/location/GeoFencerProxy;->mListener:Landroid/location/IGeoFenceListener$Stub;

    invoke-interface {v0, v1, p1}, Landroid/location/IGeoFencer;->clearGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
