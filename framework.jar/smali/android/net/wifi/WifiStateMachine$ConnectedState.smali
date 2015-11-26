.class Landroid/net/wifi/WifiStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 4594
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 4655
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$27000(Landroid/net/wifi/WifiStateMachine;)V

    .line 4656
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$27100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)Z

    .line 4657
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4597
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 4648
    const/4 v2, 0x0

    .line 4650
    :cond_0
    :goto_0
    return v2

    .line 4599
    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Watchdog reports poor link"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4601
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4608
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$13500(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 4609
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 4610
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$21100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4611
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/wifi/WifiMetrics;->reportPERIssue(Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V

    .line 4613
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$22100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 4602
    :catch_0
    move-exception v1

    .line 4603
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to disable IPv6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 4604
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4605
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to disable IPv6: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 4618
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :sswitch_1
    # getter for: Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4619
    const-string v3, "WifiStateMachine"

    const-string v4, "WISPR_LOGIN_SUCCESSFUL"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$26700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiWisprClient;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$26600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/net/wifi/WifiWisprClient;->setHotSpotNotification(IZ)V

    .line 4622
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z
    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateMachine;->access$26602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4623
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    # setter for: Landroid/net/wifi/WifiStateMachine;->mNotificationRepeatTime:J
    invoke-static {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$26802(Landroid/net/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 4628
    :sswitch_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4629
    const-string v3, "WifiStateMachine"

    const-string v4, "WISPR_LOGIN_FAILED_NETWORK"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x2

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26900(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 4634
    :sswitch_3
    # getter for: Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4635
    const-string v3, "WifiStateMachine"

    const-string v4, "WISPR_LOGIN_FAILED_AUTHENTICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x3

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26900(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 4641
    :sswitch_4
    # getter for: Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$21900()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4642
    const-string v3, "WifiStateMachine"

    const-string v4, "WISPR_LOGIN_FAILED_NOSIM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x4

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiStateMachine;->access$26900(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 4597
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_2
        0x1f6 -> :sswitch_3
        0x1f7 -> :sswitch_4
        0x21015 -> :sswitch_0
    .end sparse-switch
.end method
