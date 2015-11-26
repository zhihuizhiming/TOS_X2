.class Landroid/net/wifi/MotWifiScanMovementListener$2;
.super Ljava/lang/Object;
.source "MotWifiScanMovementListener.java"

# interfaces
.implements Lcom/motorola/slpc/ModalityManager$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/MotWifiScanMovementListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/MotWifiScanMovementListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/MotWifiScanMovementListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$200(Landroid/net/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MovementListener onEndMovement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$100(Landroid/net/wifi/MotWifiScanMovementListener;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Wifi is not enabled! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScanMovementListener;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 120
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # setter for: Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0, v2}, Landroid/net/wifi/MotWifiScanMovementListener;->access$302(Landroid/net/wifi/MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method

.method public onStartMovement()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$200(Landroid/net/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MovementListener onStartMovement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$100(Landroid/net/wifi/MotWifiScanMovementListener;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Wifi is not enabled! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$300(Landroid/net/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->DBG:Z
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$200(Landroid/net/wifi/MotWifiScanMovementListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotWifiScanMovementListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanIntervalSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v2}, Landroid/net/wifi/MotWifiScanMovementListener;->access$300(Landroid/net/wifi/MotWifiScanMovementListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    iget-object v0, v0, Landroid/net/wifi/MotWifiScanMovementListener;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->wifiScanSetDeviceStationary(Z)V

    .line 109
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$2;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # setter for: Landroid/net/wifi/MotWifiScanMovementListener;->mScanIntervalSet:Z
    invoke-static {v0, v2}, Landroid/net/wifi/MotWifiScanMovementListener;->access$302(Landroid/net/wifi/MotWifiScanMovementListener;Z)Z

    goto :goto_0
.end method
