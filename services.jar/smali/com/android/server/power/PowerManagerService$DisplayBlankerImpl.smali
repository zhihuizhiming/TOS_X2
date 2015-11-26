.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3055
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3055
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 2

    .prologue
    .line 3061
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_KPI:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3062
    const-string v0, "KPI-SCR-6-OFF"

    const-string v1, "DisplayBlanker.blankAllDisplays start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :cond_0
    monitor-enter p0

    .line 3066
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3067
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 3068
    const/4 v0, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3100(Z)V

    .line 3069
    const/4 v0, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Z)V

    .line 3070
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3072
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_KPI:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3073
    const-string v0, "KPI-SCR-7-OFF"

    const-string v1, "DisplayBlanker.blankAllDisplays complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_1
    return-void

    .line 3070
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3100
    monitor-enter p0

    .line 3101
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 2

    .prologue
    .line 3081
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_KPI:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3082
    const-string v0, "KPI-SCR-7-ON"

    const-string v1, "DisplayBlanker.unblankAllDisplays start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :cond_0
    monitor-enter p0

    .line 3086
    const/4 v0, 0x0

    :try_start_0
    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Z)V

    .line 3087
    const/4 v0, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3100(Z)V

    .line 3088
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 3089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3090
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3092
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_KPI:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3093
    const-string v0, "KPI-SCR-8-ON"

    const-string v1, "DisplayBlanker.unblankAllDisplays complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :cond_1
    return-void

    .line 3090
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
