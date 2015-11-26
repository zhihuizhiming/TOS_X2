.class final Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalProtectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3107
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3107
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x64

    .line 3110
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3111
    :try_start_0
    const-string v5, "enabled"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3113
    .local v1, "enabled":Z
    if-eqz v1, :cond_1

    .line 3114
    const-string v5, "percent"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3115
    .local v2, "percent":I
    if-le v2, v3, :cond_0

    move v2, v3

    .line 3116
    :cond_0
    rsub-int/lit8 v3, v2, 0x64

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)I

    move-result v5

    mul-int/2addr v3, v5

    div-int/lit8 v0, v3, 0x64

    .line 3117
    .local v0, "brightness":I
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3122
    .end local v2    # "percent":I
    :goto_0
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max Brightness capped at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerController:Lcom/android/server/power/DisplayPowerController;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/power/DisplayPowerController;->setMaximumBrightness(I)V

    .line 3124
    monitor-exit v4

    .line 3125
    return-void

    .line 3119
    .end local v0    # "brightness":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$ThermalProtectionReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 3124
    .end local v0    # "brightness":I
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
