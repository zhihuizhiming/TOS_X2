.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyDisconnectWifiConnection(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 3745
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3747
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25011

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3748
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v1, "Disable all WiFi Nettwork"

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3749
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    const v1, 0x2200d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 3750
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;->val$msg:Landroid/os/Message;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3751
    return-void
.end method
