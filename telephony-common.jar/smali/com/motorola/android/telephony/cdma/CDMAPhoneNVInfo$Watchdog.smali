.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
.super Ljava/lang/Thread;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x100

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    .line 124
    const/16 v0, 0x1388

    sput v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mExit:Z

    .line 130
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    .line 171
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mExit:Z

    .line 172
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 173
    monitor-exit p0

    .line 174
    return-void

    .line 173
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
    .line 134
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mExit:Z

    if-nez v2, :cond_0

    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    sget v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->TIMEOUT:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 152
    .local v1, "m":Landroid/os/Message;
    sget v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 153
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 138
    .end local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "iex":Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 141
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .restart local v0    # "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 155
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public sleep()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public watch()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 160
    monitor-exit p0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
