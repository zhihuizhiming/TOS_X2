.class Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;
.super Ljava/lang/Thread;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# static fields
.field public static MSG_TIMEOUT:I

.field private static TIMEOUT:I


# instance fields
.field private mExit:Z

.field private mHandler:Landroid/os/Handler;

.field private watchingMsg:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    const/16 v0, 0x100

    sput v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->MSG_TIMEOUT:I

    .line 277
    const/16 v0, 0x2710

    sput v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mExit:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->watchingMsg:Landroid/os/Message;

    .line 285
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    .line 326
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mExit:Z

    .line 327
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 328
    monitor-exit p0

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 289
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mExit:Z

    if-nez v2, :cond_0

    .line 290
    monitor-enter p0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :try_start_2
    sget v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->TIMEOUT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 305
    .local v1, "m":Landroid/os/Message;
    sget v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->MSG_TIMEOUT:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 306
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->watchingMsg:Landroid/os/Message;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 293
    .end local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "iex":Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 296
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .restart local v0    # "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 309
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public sleep()V
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 321
    monitor-exit p0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watch(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->watchingMsg:Landroid/os/Message;

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
