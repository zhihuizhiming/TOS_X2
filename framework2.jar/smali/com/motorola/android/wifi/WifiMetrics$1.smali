.class Lcom/motorola/android/wifi/WifiMetrics$1;
.super Ljava/lang/Thread;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/WifiMetrics;

.field final synthetic val$bt_state:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$wifi_info:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/WifiMetrics;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    iput-object p2, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    iput-object p5, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$bt_state:Ljava/lang/String;

    iput-object p6, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 498
    :try_start_0
    # invokes: Lcom/motorola/android/wifi/WifiMetrics;->now()J
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$100()J

    move-result-wide v16

    .line 502
    .local v16, "timestamp":J
    const-string v4, "1.0.0"

    .line 503
    .local v4, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    const-string v3, "DISCONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const-string v4, "1.1"

    .line 507
    :cond_0
    new-instance v1, Lcom/motorola/android/provider/CheckinEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 509
    .local v1, "event":Lcom/motorola/android/provider/CheckinEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v14

    .line 510
    .local v14, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v15

    .line 512
    .local v15, "supplicant_state":Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v12

    .line 513
    .local v12, "rssi":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    .line 517
    .local v11, "link_speed":I
    if-nez v14, :cond_3

    .line 518
    const-string v14, "none"

    .line 523
    :goto_0
    const-string v2, "ssid"

    invoke-virtual {v1, v2, v14}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-nez v7, :cond_6

    .line 528
    const-string v7, "none"

    .line 531
    :goto_1
    const-string v2, "bssid_prefix"

    invoke-virtual {v1, v2, v7}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 536
    .local v13, "sb":Ljava/lang/StringBuffer;
    if-nez v15, :cond_1

    const-string v15, "none"

    .end local v15    # "supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_1
    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 537
    const-string v2, "supplicant"

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v2, "rssi"

    invoke-virtual {v1, v2, v12}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 546
    const-string v2, "link_speed"

    invoke-virtual {v1, v2, v11}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 551
    const-string v2, "bluetooth"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$bt_state:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    const-string v3, "DISCONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    const-string v2, "reason_code"

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v3

    iget v3, v3, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->reasonCode:I

    invoke-virtual {v1, v2, v3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z
    invoke-static {v2}, Lcom/motorola/android/wifi/WifiMetrics;->access$300(Lcom/motorola/android/wifi/WifiMetrics;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 558
    # invokes: Lcom/motorola/android/wifi/WifiMetrics;->now()J
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$100()J

    move-result-wide v2

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v5

    iget-wide v5, v5, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    sub-long v8, v2, v5

    .line 559
    .local v8, "duration":J
    const-string v2, "totalduration"

    const-wide/16 v5, 0x3e8

    div-long v5, v8, v5

    invoke-virtual {v1, v2, v5, v6}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 569
    .end local v8    # "duration":J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    const-string v5, "CONNECT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z
    invoke-static {v2, v3}, Lcom/motorola/android/wifi/WifiMetrics;->access$302(Lcom/motorola/android/wifi/WifiMetrics;Z)Z

    .line 574
    .end local v1    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .end local v4    # "version":Ljava/lang/String;
    .end local v7    # "bssid":Ljava/lang/String;
    .end local v11    # "link_speed":I
    .end local v12    # "rssi":I
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "ssid":Ljava/lang/String;
    .end local v16    # "timestamp":J
    :goto_3
    return-void

    .line 519
    .restart local v1    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .restart local v4    # "version":Ljava/lang/String;
    .restart local v7    # "bssid":Ljava/lang/String;
    .restart local v11    # "link_speed":I
    .restart local v12    # "rssi":I
    .restart local v14    # "ssid":Ljava/lang/String;
    .restart local v15    # "supplicant_state":Landroid/net/wifi/SupplicantState;
    .restart local v16    # "timestamp":J
    :cond_3
    const-string v2, "attwifi"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "orange"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 520
    :cond_4
    const-string v14, "carrier_ssid"

    goto/16 :goto_0

    .line 522
    :cond_5
    const-string v14, "private_ssid"

    goto/16 :goto_0

    .line 530
    :cond_6
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 561
    .end local v15    # "supplicant_state":Landroid/net/wifi/SupplicantState;
    .restart local v13    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    const-string v2, "totalduration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 571
    .end local v1    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .end local v4    # "version":Ljava/lang/String;
    .end local v7    # "bssid":Ljava/lang/String;
    .end local v11    # "link_speed":I
    .end local v12    # "rssi":I
    .end local v13    # "sb":Ljava/lang/StringBuffer;
    .end local v14    # "ssid":Ljava/lang/String;
    .end local v16    # "timestamp":J
    :catch_0
    move-exception v10

    .line 572
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "WifiMetrics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckinEvent exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
