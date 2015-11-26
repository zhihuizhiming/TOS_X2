.class Lcom/android/server/power/DisplayPowerState$3;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 341
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # setter for: Lcom/android/server/power/DisplayPowerState;->mScreenUpdatePending:Z
    invoke-static {v3, v2}, Lcom/android/server/power/DisplayPowerState;->access$102(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 343
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$200(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenBrightness:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$400(Lcom/android/server/power/DisplayPowerState;)I

    move-result v0

    .line 345
    .local v0, "brightness":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$200(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mElectronBeamLevel:F
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mButtonBrightness:I
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerState;->access$500(Lcom/android/server/power/DisplayPowerState;)I

    move-result v1

    .line 346
    .local v1, "buttonBrightness":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerState;->access$600(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mScreenOn:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerState;->access$200(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->setState(ZII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    const-string v2, "DisplayPowerState"

    const-string v3, "Screen ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerState;->mScreenReady:Z
    invoke-static {v2, v3}, Lcom/android/server/power/DisplayPowerState;->access$802(Lcom/android/server/power/DisplayPowerState;Z)Z

    .line 351
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerState$3;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->invokeCleanListenerIfNeeded()V
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerState;->access$900(Lcom/android/server/power/DisplayPowerState;)V

    .line 357
    :cond_1
    :goto_2
    return-void

    .end local v0    # "brightness":I
    .end local v1    # "buttonBrightness":I
    :cond_2
    move v0, v2

    .line 343
    goto :goto_0

    .restart local v0    # "brightness":I
    :cond_3
    move v1, v2

    .line 345
    goto :goto_1

    .line 353
    .restart local v1    # "buttonBrightness":I
    :cond_4
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    const-string v2, "DisplayPowerState"

    const-string v3, "Screen not ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
