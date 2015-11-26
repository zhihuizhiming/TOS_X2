.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 445
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 446
    :try_start_0
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v4

    .line 447
    .local v4, "on":Z
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v9

    if-eq v4, v9, :cond_1

    move v5, v6

    .line 448
    .local v5, "onChanged":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 449
    .local v0, "backlight":I
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v9

    if-eq v0, v9, :cond_2

    move v1, v6

    .line 451
    .local v1, "backlightChanged":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingButtonLight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v2

    .line 452
    .local v2, "buttonLight":I
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualButtonLight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v9

    if-eq v2, v9, :cond_3

    move v3, v6

    .line 453
    .local v3, "buttonLightChagned":Z
    :goto_3
    if-nez v5, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    .line 455
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v6, v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2102(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 456
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2400(Lcom/android/server/power/DisplayPowerState;)V

    .line 487
    return-void

    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "buttonLight":I
    .end local v3    # "buttonLightChagned":Z
    .end local v5    # "onChanged":Z
    :cond_1
    move v5, v7

    .line 447
    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v5    # "onChanged":Z
    :cond_2
    move v1, v7

    .line 449
    goto :goto_2

    .restart local v1    # "backlightChanged":Z
    .restart local v2    # "buttonLight":I
    :cond_3
    move v3, v7

    .line 452
    goto :goto_3

    .line 458
    .restart local v3    # "buttonLightChagned":Z
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v9, v4}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1602(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 459
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v9, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 461
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualButtonLight:I
    invoke-static {v9, v2}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2002(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 462
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$700()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 465
    const-string v8, "DisplayPowerState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating screen state: on="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", backlight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_5
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 469
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    .line 472
    :cond_6
    if-eqz v1, :cond_7

    .line 473
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2300(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 480
    :cond_7
    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 481
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v8, v8, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    goto/16 :goto_0

    .line 462
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "buttonLight":I
    .end local v3    # "buttonLightChagned":Z
    .end local v4    # "on":Z
    .end local v5    # "onChanged":Z
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method
