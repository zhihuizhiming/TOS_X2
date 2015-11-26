.class public Landroid/telephony/CallISmsApp$TryLooper;
.super Ljava/lang/Object;
.source "CallISmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CallISmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TryLooper"
.end annotation


# static fields
.field private static final RETRY_TIMES:I = 0x14


# instance fields
.field private mTryCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CallISmsApp$TryLooper;->mTryCounter:I

    .line 78
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    invoke-static {p0}, Landroid/telephony/CallISmsApp$TryLooper;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    const-string v0, "CallISmsApp"

    const-string v1, "exception:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static isRetryTypeException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/telephony/CallISmsApp$NeedRetryException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public increaseTryCounter()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/telephony/CallISmsApp$TryLooper;->mTryCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/CallISmsApp$TryLooper;->mTryCounter:I

    .line 82
    return-void
.end method

.method public stillNeedRetry(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    iget v0, p0, Landroid/telephony/CallISmsApp$TryLooper;->mTryCounter:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Landroid/telephony/CallISmsApp$TryLooper;->isRetryTypeException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
