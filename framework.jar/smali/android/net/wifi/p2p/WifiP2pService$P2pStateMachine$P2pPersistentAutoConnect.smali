.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pPersistentAutoConnect"
.end annotation


# instance fields
.field mPersistentRetry:I

.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2203
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2207
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    .line 2208
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2209
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2285
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    .line 2286
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2287
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2213
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2214
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2281
    :goto_0
    return v2

    .line 2217
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " P2P_PERSISTENT_AUTO_CONNECT.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2218
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12400(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_1

    .line 2219
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connection in progress, defer message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2220
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    :cond_0
    :goto_1
    move v2, v3

    .line 2281
    goto :goto_0

    .line 2223
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pConfig;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2224
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistentAutoConnectNetId(Landroid/net/wifi/p2p/WifiP2pConfig;)I
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)I

    move-result v0

    .line 2225
    .local v0, "netId":I
    if-ltz v0, :cond_2

    .line 2226
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start P2P_PERSISTENT_AUTO_CONNECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2227
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2228
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2229
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2230
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z
    invoke-static {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$12402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2231
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    move v2, v3

    .line 2232
    goto/16 :goto_0

    .line 2235
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v4

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2241
    .end local v0    # "netId":I
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 2242
    .local v1, "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->SUCCESS:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-eq v1, v4, :cond_0

    .line 2244
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN_P2P_GROUP:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v1, v4, :cond_4

    .line 2245
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget v0, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2246
    .restart local v0    # "netId":I
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown client from the list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2247
    if-ltz v0, :cond_3

    .line 2248
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z
    invoke-static {v4, v0, v5, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;ILjava/lang/String;Z)Z

    .line 2249
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    const/4 v5, -0x2

    iput v5, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2250
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2251
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2256
    .end local v0    # "netId":I
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v5

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$12800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2257
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    goto/16 :goto_1

    .line 2253
    :cond_4
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    if-ne v1, v4, :cond_3

    .line 2254
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto :goto_2

    .line 2261
    .end local v1    # "status":Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :sswitch_2
    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->PERSISTENT_RETRY_COUNT:I
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2262
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v5

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 2263
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2264
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v5

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2265
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    goto/16 :goto_1

    .line 2267
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPersistentRetry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2268
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v6, 0x2301b

    iget v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v8

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2273
    :sswitch_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 2274
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v5

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2275
    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;->mPersistentRetry:I

    goto/16 :goto_1

    .line 2214
    :sswitch_data_0
    .sparse-switch
        0x2301b -> :sswitch_0
        0x2401c -> :sswitch_3
        0x2401e -> :sswitch_2
        0x24020 -> :sswitch_1
    .end sparse-switch
.end method
