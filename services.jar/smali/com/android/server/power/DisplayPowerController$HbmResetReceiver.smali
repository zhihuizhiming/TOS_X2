.class Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HbmResetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerController;Lcom/android/server/power/DisplayPowerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/DisplayPowerController;
    .param p2, "x1"    # Lcom/android/server/power/DisplayPowerController$1;

    .prologue
    .line 1623
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1626
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisplayPowerController"

    const-string v1, "HBM: checkin & reset usage data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1800(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/Notifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHbmDayDuration:J
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$1600(Lcom/android/server/power/DisplayPowerController;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mHbmDaySession:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1700(Lcom/android/server/power/DisplayPowerController;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/Notifier;->noteHbm(JI)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    const-wide/16 v1, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerController;->mHbmDayDuration:J
    invoke-static {v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->access$1602(Lcom/android/server/power/DisplayPowerController;J)J

    .line 1629
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$HbmResetReceiver;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerController;->mHbmDaySession:I
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$1702(Lcom/android/server/power/DisplayPowerController;I)I

    .line 1630
    return-void
.end method
