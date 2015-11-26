.class Landroid/net/wifi/MotWifiScanMovementListener;
.super Ljava/lang/Object;
.source "MotWifiScanMovementListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotWifiScanMovementListener"


# instance fields
.field private DBG:Z

.field private isMovementRegistered:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

.field private mScanIntervalSet:Z

.field private mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    .line 27
    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    new-instance v0, Landroid/net/wifi/MotWifiScanMovementListener$2;

    invoke-direct {v0, p0}, Landroid/net/wifi/MotWifiScanMovementListener$2;-><init>(Landroid/net/wifi/MotWifiScanMovementListener;)V

    iput-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    .line 34
    iput-object p1, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 37
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/net/wifi/MotWifiScanMovementListener$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/MotWifiScanMovementListener$1;-><init>(Landroid/net/wifi/MotWifiScanMovementListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/MotWifiScanMovementListener;)Lcom/motorola/slpc/ModalityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/MotWifiScanMovementListener;Lcom/motorola/slpc/ModalityManager;)Lcom/motorola/slpc/ModalityManager;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;
    .param p1, "x1"    # Lcom/motorola/slpc/ModalityManager;

    .prologue
    .line 20
    iput-object p1, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/MotWifiScanMovementListener;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/MotWifiScanMovementListener;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 20
    iput-object p1, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/wifi/MotWifiScanMovementListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;

    .prologue
    .line 20
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Landroid/net/wifi/MotWifiScanMovementListener;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;

    .prologue
    .line 20
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z

    return v0
.end method

.method static synthetic access$302(Landroid/net/wifi/MotWifiScanMovementListener;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/MotWifiScanMovementListener;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z

    return p1
.end method


# virtual methods
.method public registerSensorHubMovement()V
    .locals 1

    .prologue
    .line 126
    const v0, 0x249f0

    invoke-virtual {p0, v0}, Landroid/net/wifi/MotWifiScanMovementListener;->startMovementMonitor(I)Z

    .line 127
    return-void
.end method

.method public startMovementMonitor(I)Z
    .locals 9
    .param p1, "mEndDuration"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    if-nez v0, :cond_0

    move v0, v7

    .line 78
    :goto_0
    return v0

    .line 60
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    if-eqz v0, :cond_1

    move v0, v8

    .line 61
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    const-wide/16 v2, 0x3e8

    int-to-long v4, p1

    iget-object v6, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/slpc/ModalityManager;->addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    iput-boolean v7, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    .line 73
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    goto :goto_0

    .line 75
    :cond_3
    iput-boolean v8, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    .line 76
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotWifiScanMovementListener"

    const-string/jumbo v1, "registered MovementListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopMovementMonitor()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    if-eqz v0, :cond_2

    .line 86
    iget-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotWifiScanMovementListener"

    const-string/jumbo v1, "unregistered MovementListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Landroid/net/wifi/MotWifiScanMovementListener;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "MotWifiScanMovementListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister movement listener, isMovementRegistered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/MotWifiScanMovementListener;->isMovementRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterSensorHubMovement()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/net/wifi/MotWifiScanMovementListener;->stopMovementMonitor()V

    .line 131
    return-void
.end method
