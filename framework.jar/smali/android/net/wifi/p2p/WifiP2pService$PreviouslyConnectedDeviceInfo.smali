.class Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
.super Ljava/lang/Object;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviouslyConnectedDeviceInfo"
.end annotation


# instance fields
.field mAutoConnectTime:J

.field mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;)V
    .locals 2

    .prologue
    .line 293
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mAutoConnectTime:J

    .line 296
    return-void
.end method
