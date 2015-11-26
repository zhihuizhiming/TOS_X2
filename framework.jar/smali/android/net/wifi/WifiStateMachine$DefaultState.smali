.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 2945
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2948
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 3163
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error! unhandled message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3166
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 2950
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 2951
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v5, 0x11001

    invoke-virtual {v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 2953
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiP2pService connection failure, error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2957
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 2962
    :sswitch_3
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    # setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$2602(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .line 2971
    :sswitch_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 2974
    :sswitch_5
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->what:I

    check-cast v3, Ljava/util/List;

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v5, p1, v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 2977
    :sswitch_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_3

    move v5, v4

    :cond_3
    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$2902(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 2980
    :sswitch_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_4

    move v5, v4

    :cond_4
    # setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$3002(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 2983
    :sswitch_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_5

    .line 2984
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v3, v7, v5}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 2986
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v3, v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 2990
    :sswitch_9
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    .line 2991
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2992
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "wifi_country_code"

    invoke-static {v3, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2999
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 3000
    .local v2, "sequenceNum":I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x20050

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v3, v6, v2, v5, v0}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3005
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v2    # "sequenceNum":I
    :sswitch_a
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v5, v6, v7, v3}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 3008
    :sswitch_b
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3600(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3011
    :sswitch_c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3072
    :sswitch_d
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5, v3}, Landroid/net/wifi/WifiStateMachine;->access$3802(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 3075
    :sswitch_e
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_6

    .line 3076
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3077
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v3, v8, v4}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 3079
    :cond_6
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v3, v8, v5}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 3083
    :sswitch_f
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 3084
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 3089
    :sswitch_10
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v3

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/motorola/android/wifi/WifiMetrics;->reportDxeStall(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V

    goto/16 :goto_0

    .line 3094
    :sswitch_11
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x25002

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3098
    :sswitch_12
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x25005

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3102
    :sswitch_13
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x25008

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3106
    :sswitch_14
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2500c

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3110
    :sswitch_15
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2500f

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3114
    :sswitch_16
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x25012

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3118
    :sswitch_17
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x25016

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v3, p1, v5, v7}, Landroid/net/wifi/WifiStateMachine;->access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3122
    :sswitch_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 3123
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 3126
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :sswitch_19
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_7

    move v5, v4

    :cond_7
    # setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$4402(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3127
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2300d

    # invokes: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v3, p1, v5}, Landroid/net/wifi/WifiStateMachine;->access$4500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 3131
    :sswitch_1a
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3132
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3136
    :sswitch_1b
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v5

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/LinkAddress;

    invoke-virtual {v5, v3}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3137
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4700(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3142
    :sswitch_1c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 3143
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 3148
    :sswitch_1d
    const-string v3, "1"

    const-string/jumbo v5, "sys.boot_completed"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3149
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Boot is complete! - processing initializeCountryDetectorAndCheckCountry"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3150
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->initializeCountryDetectorAndCheckCountry()V
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 3152
    :cond_8
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Boot is incomplete - try after 2 sec!"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$5000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3153
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2005d

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v5, v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 3159
    :sswitch_1e
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2948
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20011 -> :sswitch_0
        0x20012 -> :sswitch_0
        0x20013 -> :sswitch_0
        0x20014 -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_0
        0x20017 -> :sswitch_0
        0x20018 -> :sswitch_0
        0x20019 -> :sswitch_0
        0x2001a -> :sswitch_0
        0x2001b -> :sswitch_0
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_0
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_0
        0x20038 -> :sswitch_0
        0x20039 -> :sswitch_0
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_5
        0x20047 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20049 -> :sswitch_0
        0x2004a -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004d -> :sswitch_8
        0x20050 -> :sswitch_0
        0x20052 -> :sswitch_6
        0x20053 -> :sswitch_0
        0x20056 -> :sswitch_e
        0x20058 -> :sswitch_0
        0x2005a -> :sswitch_0
        0x2005b -> :sswitch_7
        0x2005d -> :sswitch_1d
        0x2005e -> :sswitch_1e
        0x2005f -> :sswitch_0
        0x20085 -> :sswitch_0
        0x20086 -> :sswitch_9
        0x20088 -> :sswitch_0
        0x20089 -> :sswitch_0
        0x2008c -> :sswitch_a
        0x2008d -> :sswitch_c
        0x2008e -> :sswitch_b
        0x2008f -> :sswitch_1a
        0x20090 -> :sswitch_1b
        0x20091 -> :sswitch_0
        0x20092 -> :sswitch_0
        0x21015 -> :sswitch_0
        0x21016 -> :sswitch_0
        0x2300b -> :sswitch_18
        0x2300c -> :sswitch_19
        0x23015 -> :sswitch_1c
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_0
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_0
        0x2400a -> :sswitch_0
        0x2400c -> :sswitch_f
        0x2402b -> :sswitch_0
        0x2402d -> :sswitch_10
        0x25001 -> :sswitch_11
        0x25004 -> :sswitch_12
        0x25007 -> :sswitch_13
        0x2500a -> :sswitch_14
        0x2500e -> :sswitch_15
        0x25011 -> :sswitch_16
        0x25014 -> :sswitch_17
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_0
        0x30006 -> :sswitch_d
    .end sparse-switch
.end method
