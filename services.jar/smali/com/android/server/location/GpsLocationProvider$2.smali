.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 460
    const-string v5, "GpsLocationProvider"

    const-string v6, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    const-string v6, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 465
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "GpsLocationProvider"

    const-string v7, "ALARM_WAKEUP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(ZZ)V
    invoke-static {v6, v5, v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    goto :goto_0

    .line 468
    :cond_3
    const-string v6, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 469
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "GpsLocationProvider"

    const-string v6, "ALARM_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_4
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 471
    :cond_5
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 472
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 473
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 474
    .local v4, "plugged":I
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    move-result-object v6

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-virtual {v6, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateCharging(Z)V

    goto :goto_0

    .line 476
    .end local v4    # "plugged":I
    :cond_7
    const-string v6, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 477
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "GpsLocationProvider"

    const-string v7, "ALARM_MVMT_MON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_8
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v7, 0xe

    const/4 v8, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v6, v7, v5, v8}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 480
    :cond_9
    const-string v6, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 481
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 482
    :cond_a
    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 483
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 484
    :cond_b
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    const-string v6, "noConnectivity"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 487
    const/4 v3, 0x1

    .line 493
    .local v3, "networkState":I
    :goto_1
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 495
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 497
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 499
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 489
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "networkState":I
    :cond_c
    const/4 v3, 0x2

    .restart local v3    # "networkState":I
    goto :goto_1
.end method
