.class final Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_ON:Z


# instance fields
.field private mActualBacklight:I

.field private mActualButtonLight:I

.field private mActualOn:Z

.field private mChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingButtonLight:I

.field private mPendingOn:Z

.field private final mTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 377
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 383
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 384
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 385
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    .line 386
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 388
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingButtonLight:I

    .line 389
    iput v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualButtonLight:I

    .line 432
    new-instance v0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/DisplayPowerState;
    .param p2, "x1"    # Lcom/android/server/power/DisplayPowerState$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingButtonLight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    .prologue
    .line 377
    iget v0, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualButtonLight:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualButtonLight:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
    .param p1, "x1"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 419
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 420
    const-string v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mActualBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingButtonLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingButtonLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActualButtonLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualButtonLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChangeInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setState(ZII)Z
    .locals 5
    .param p1, "on"    # Z
    .param p2, "backlight"    # I
    .param p3, "buttonLight"    # I

    .prologue
    const/4 v0, 0x1

    .line 394
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingButtonLight:I

    if-eq p3, v2, :cond_2

    .line 398
    :cond_0
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    const-string v2, "DisplayPowerState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting new screen state: on="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", backlight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buttonLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z

    .line 406
    iput p2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 408
    iput p3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingButtonLight:I

    .line 409
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v2, :cond_2

    .line 410
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    .line 411
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mTask:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 414
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z

    if-nez v2, :cond_3

    :goto_0
    monitor-exit v1

    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
