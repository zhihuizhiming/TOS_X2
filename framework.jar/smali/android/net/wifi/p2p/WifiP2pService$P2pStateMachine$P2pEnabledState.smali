.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pEnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1115
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 1117
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1118
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1119
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->initializeP2pSettings()V
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z
    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 1122
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z
    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$3902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1123
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1124
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mAutoConnectTime:J

    .line 1126
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1476
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V
    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 1477
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$3500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1479
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$6302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z
    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    .line 1481
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 27
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 1469
    const/16 v22, 0x0

    .line 1471
    :goto_0
    return v22

    .line 1133
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const-string v23, "Unexpected loss of p2p socket connection"

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    move-result-object v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1471
    :cond_0
    :goto_1
    :sswitch_1
    const/16 v22, 0x1

    goto :goto_0

    .line 1140
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1143
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1146
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$3902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v22

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mAutoConnectTime:J

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiMonitor;->stopMonitoring()V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    move-result-object v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1156
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1159
    .local v8, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1160
    .local v19, "savedGrp":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v23, v0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mSaveSelectedGoDevice:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$4602(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1163
    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1168
    .end local v19    # "savedGrp":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_4
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v23, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "set device name "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22035

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1172
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    const-string v23, ""

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mSaveSelectedGoDevice:Ljava/lang/String;
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$4602(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22034

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1180
    .end local v8    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13    # "i$":Ljava/util/Iterator;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 1181
    .local v8, "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    invoke-static {v0, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2203d

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1184
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2203c

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1190
    .end local v8    # "d":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/4 v4, 0x1

    .line 1191
    .local v4, "blocked":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1600(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v22

    move/from16 v0, v22

    if-eq v0, v4, :cond_0

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z
    invoke-static {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1193
    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$5000(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$1702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1197
    :cond_7
    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1700(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$1702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x78

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->p2pFind(I)Z

    .line 1201
    :cond_8
    if-eqz v4, :cond_0

    .line 1203
    :try_start_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/util/StateMachine;

    .line 1204
    .local v15, "m":Lcom/android/internal/util/StateMachine;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1205
    .end local v15    # "m":Lcom/android/internal/util/StateMachine;
    :catch_0
    move-exception v12

    .line 1206
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "unable to send BLOCK_DISCOVERY response: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1190
    .end local v4    # "blocked":Z
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1211
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1600(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22002

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1217
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x78

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->p2pFind(I)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$3902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22003

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 1223
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22002

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1228
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$3902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    goto/16 :goto_1

    .line 1232
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22006

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1239
    :goto_3
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v22

    if-nez v22, :cond_0

    .line 1240
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v22

    if-nez v22, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v22

    if-nez v22, :cond_0

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "Enable wifi network"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    const v23, 0x20036

    const/16 v24, -0x1

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    const v23, 0x20047

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_1

    .line 1235
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22005

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_3

    .line 1250
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1600(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2202f

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1255
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " discover services"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2202f

    const/16 v24, 0x3

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1261
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x78

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->p2pFind(I)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22030

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1264
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2202f

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1269
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1270
    .local v10, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1275
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v22

    if-nez v22, :cond_11

    .line 1277
    :cond_10
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1279
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 1280
    iget v0, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v22

    iget-object v0, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_0

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 1284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mAutoConnectTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_13

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v22

    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mAutoConnectTime:J

    .line 1293
    :cond_12
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1294
    .local v6, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v0, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1295
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 1296
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1301
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    const v24, 0x2301b

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1288
    .end local v6    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Blocked for two mins..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v24, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    invoke-static/range {v24 .. v24}, Landroid/net/wifi/p2p/WifiP2pService;->access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;->mP2pDeviceInfo:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1289
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1297
    .restart local v6    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_14
    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 1298
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_4

    .line 1300
    :cond_15
    iget-object v0, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_4

    .line 1307
    .end local v6    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1309
    .restart local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v22

    iget-object v0, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    .line 1310
    if-eqz v10, :cond_0

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_1

    .line 1315
    .end local v10    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " add service"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1317
    .local v21, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2201e

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1320
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2201d

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1324
    .end local v21    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " remove service"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 1326
    .restart local v21    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22021

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1330
    .end local v21    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " clear service"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v23, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22024

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1335
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " add service request"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22026

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1340
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22027

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1343
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " remove service request"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2202a

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1348
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " clear service request"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    move-object/from16 v23, v0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x2202d

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1353
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " receive service response"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1354
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/List;

    .line 1356
    .local v20, "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 1357
    .local v18, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    .line 1359
    .local v9, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->setSrcDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_5

    .line 1364
    .end local v9    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .end local v20    # "sdRespList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " delete persistent group"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22038

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1369
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->setMiracastMode(I)V

    goto/16 :goto_1

    .line 1372
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " start listen mode"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x1f4

    const/16 v25, 0x1f4

    invoke-virtual/range {v22 .. v25}, Landroid/net/wifi/WifiNative;->p2pExtListen(ZII)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22043

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1377
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22042

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1381
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " stop listen mode"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/net/wifi/WifiNative;->p2pExtListen(ZII)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22046

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1387
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    goto/16 :goto_1

    .line 1385
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22045

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_6

    .line 1390
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 1391
    .local v17, "p2pChannels":Landroid/os/Bundle;
    const-string v22, "lc"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1392
    .local v14, "lc":I
    const-string/jumbo v22, "oc"

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1393
    .local v16, "oc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " set listen and operating channel"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/WifiNative;->p2pSetChannel(II)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22049

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1397
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22048

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1401
    .end local v14    # "lc":I
    .end local v16    # "oc":I
    .end local v17    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 1402
    .local v7, "countryCode":Ljava/lang/String;
    sget-object v22, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1405
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;
    invoke-static {v0, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$6302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 1412
    .end local v7    # "countryCode":Ljava/lang/String;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->getBand()I

    move-result v22

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$6402(I)I

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v22

    if-eqz v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 1416
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const v23, 0x22010

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1421
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$6600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    goto/16 :goto_1

    .line 1428
    :cond_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "update channel list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->updateChannelList()Z

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z
    invoke-static/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z

    goto/16 :goto_1

    .line 1433
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    const v24, 0x20087

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 1439
    :sswitch_1a
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v22

    if-nez v22, :cond_0

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v22

    if-nez v22, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v22

    if-nez v22, :cond_0

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    const v23, 0x20036

    const/16 v24, -0x1

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v22

    const v23, 0x20047

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_1

    .line 1453
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v23, "preferred_p2p_configuration"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1455
    .local v11, "deviceConf":Ljava/lang/String;
    if-eqz v11, :cond_1f

    .line 1456
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1458
    .local v5, "confToken":[Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v23, v5, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    .line 1461
    const/16 v22, 0x3

    aget-object v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService;->access$5502(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1464
    .end local v5    # "confToken":[Ljava/lang/String;
    :cond_1f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static/range {v22 .. v22}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v23, v0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/WifiNative;->setMaxNumberStation(I)Z

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mP2pAutoConnectSupport = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1462
    .restart local v5    # "confToken":[Ljava/lang/String;
    :catch_1
    move-exception v22

    goto :goto_7

    .line 1131
    nop

    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_1
        0x20084 -> :sswitch_2
        0x20087 -> :sswitch_19
        0x22001 -> :sswitch_6
        0x22004 -> :sswitch_8
        0x2201c -> :sswitch_c
        0x2201f -> :sswitch_d
        0x22022 -> :sswitch_e
        0x22025 -> :sswitch_f
        0x22028 -> :sswitch_10
        0x2202b -> :sswitch_11
        0x2202e -> :sswitch_9
        0x22033 -> :sswitch_3
        0x22036 -> :sswitch_13
        0x2203b -> :sswitch_4
        0x22041 -> :sswitch_15
        0x22044 -> :sswitch_16
        0x22047 -> :sswitch_17
        0x22054 -> :sswitch_1b
        0x2300e -> :sswitch_14
        0x2300f -> :sswitch_5
        0x23010 -> :sswitch_18
        0x23018 -> :sswitch_1a
        0x2301a -> :sswitch_1
        0x2301b -> :sswitch_1
        0x24002 -> :sswitch_0
        0x24015 -> :sswitch_a
        0x24016 -> :sswitch_b
        0x24025 -> :sswitch_7
        0x24026 -> :sswitch_12
    .end sparse-switch
.end method
