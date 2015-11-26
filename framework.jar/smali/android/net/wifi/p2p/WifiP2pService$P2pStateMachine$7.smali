.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;
.super Ljava/lang/Object;
.source "WifiP2pService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field final synthetic val$pin:Landroid/widget/EditText;

.field final synthetic val$wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 3381
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iput-object p2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->val$wps:Landroid/net/wifi/WpsInfo;

    iput-object p3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->val$pin:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v3, 0x23002

    .line 3383
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->val$wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3384
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->val$pin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 3386
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accept invitation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3388
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v0

    if-nez v0, :cond_2

    .line 3389
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x25011

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3391
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 3399
    :goto_0
    return-void

    .line 3393
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3396
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
