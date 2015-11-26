.class Landroid/net/wifi/MotWifiScanMovementListener$1;
.super Landroid/content/BroadcastReceiver;
.source "MotWifiScanMovementListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/MotWifiScanMovementListener;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
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
    .line 38
    iput-object p1, p0, Landroid/net/wifi/MotWifiScanMovementListener$1;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iget-object v1, p0, Landroid/net/wifi/MotWifiScanMovementListener$1;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    const-string/jumbo v0, "modality"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/slpc/ModalityManager;

    # setter for: Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;
    invoke-static {v1, v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$002(Landroid/net/wifi/MotWifiScanMovementListener;Lcom/motorola/slpc/ModalityManager;)Lcom/motorola/slpc/ModalityManager;

    .line 42
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$1;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    # getter for: Landroid/net/wifi/MotWifiScanMovementListener;->mWiFiMvmtMgr:Lcom/motorola/slpc/ModalityManager;
    invoke-static {v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$000(Landroid/net/wifi/MotWifiScanMovementListener;)Lcom/motorola/slpc/ModalityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "MotWifiScanMovementListener mWiFiMvmtMgr = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/MotWifiScanMovementListener$1;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    # setter for: Landroid/net/wifi/MotWifiScanMovementListener;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Landroid/net/wifi/MotWifiScanMovementListener;->access$102(Landroid/net/wifi/MotWifiScanMovementListener;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 49
    iget-object v0, p0, Landroid/net/wifi/MotWifiScanMovementListener$1;->this$0:Landroid/net/wifi/MotWifiScanMovementListener;

    const v1, 0x249f0

    invoke-virtual {v0, v1}, Landroid/net/wifi/MotWifiScanMovementListener;->startMovementMonitor(I)Z

    .line 51
    return-void

    .line 45
    :cond_0
    const-string v0, "MotWifiScanMovementListener"

    const-string v1, "Got instance of modality service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
