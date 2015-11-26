.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3133
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)I

    move-result v12

    if-nez v12, :cond_4

    .line 3136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3138
    .local v9, "now":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3140
    .local v8, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 3141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3143
    .local v11, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v14, 0xffff

    and-int/2addr v12, v14

    const/4 v14, 0x1

    if-ne v12, v14, :cond_0

    .line 3146
    const-wide/16 v1, 0x0

    .line 3147
    .local v1, "adj":J
    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v16

    cmp-long v12, v14, v16

    if-gez v12, :cond_1

    .line 3148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v14

    sub-long v1, v9, v14

    .line 3152
    :goto_1
    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mDurationInSleep:J

    add-long v3, v14, v1

    .line 3155
    .local v3, "duration":J
    const-wide/32 v14, 0x1b7740

    cmp-long v12, v3, v14

    if-lez v12, :cond_0

    .line 3156
    const-string v12, "PowerManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suspicious wakelock held "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms when sleep: lock="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v15}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", flags=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ws="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.motorola.intent.action.SUSPICIOUS_WAKELOCK"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3163
    .local v7, "intent":Landroid/content/Intent;
    const-string v12, "LOCK"

    iget-object v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-static {v14}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v7, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3164
    const-string v12, "PID"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v7, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3165
    const-string v12, "UID"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v7, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3166
    const-string v12, "TAG"

    iget-object v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3167
    const-string v12, "TIME"

    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTime:J

    invoke-virtual {v7, v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3168
    const-string v12, "FLAGS"

    iget v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-virtual {v7, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3169
    const-string v12, "SOURCE"

    iget-object v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3170
    const-string v12, "DURATION"

    invoke-virtual {v7, v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3171
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3174
    .end local v1    # "adj":J
    .end local v3    # "duration":J
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v11    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 3150
    .restart local v1    # "adj":J
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v11    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    :try_start_1
    iget-wide v14, v11, Lcom/android/server/power/PowerManagerService$WakeLock;->mTime:J

    sub-long v1, v9, v14

    goto/16 :goto_1

    .line 3174
    .end local v1    # "adj":J
    .end local v11    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3177
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 3178
    .local v5, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 3182
    .end local v5    # "i":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v12}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLockMonitor:Ljava/lang/Runnable;
    invoke-static {v13}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v13

    const-wide/32 v14, 0x493e0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3184
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v9    # "now":J
    :cond_4
    return-void
.end method
