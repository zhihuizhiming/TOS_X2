.class Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/motorola/slpc/ModalityManager$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V
    .locals 0

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2543
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2545
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_1
    :goto_0
    return-void

    .line 2550
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5400(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5500(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2551
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2555
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5402(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 2556
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5502(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 2558
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;J)J

    .line 2562
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 2564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2568
    .local v0, "changed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5300(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_5

    .line 2569
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovementMonitor hibernate w/ prop interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6000(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I

    .line 2572
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6000(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v4, v4, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    .line 2580
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2583
    if-eqz v0, :cond_1

    .line 2584
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # invokes: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v7}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V

    goto/16 :goto_0

    .line 2574
    :cond_5
    :try_start_1
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2575
    const-string v1, "GpsLocationProvider"

    const-string v3, "MovementMonitor hibernate until sensor hub wakes us"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :cond_6
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x4

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I

    .line 2578
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, -0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 2580
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartMovement()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2496
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2498
    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    :cond_1
    :goto_0
    return-void

    .line 2503
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5400(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5500(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2504
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2508
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5502(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 2511
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 2514
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5400(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 2515
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2516
    const-string v1, "GpsLocationProvider"

    const-string v2, "onStartMovement(), calling updateNoFix()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateNoFix()V

    .line 2521
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5402(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    .line 2524
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 2526
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2529
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2531
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    .line 2534
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2537
    if-eqz v0, :cond_1

    .line 2538
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # invokes: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$5700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V

    goto :goto_0

    .line 2534
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
