.class public Landroid/telephony/CallISmsApp;
.super Ljava/lang/Object;
.source "CallISmsApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallISmsApp$TryLooper;,
        Landroid/telephony/CallISmsApp$NeedRetryException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallISmsApp"

.field private static final WAIT_TIME:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static declared-synchronized calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 127
    const-class v3, Landroid/telephony/CallISmsApp;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/telephony/CallISmsApp;->preCallInterface()V

    .line 129
    new-instance v1, Landroid/telephony/CallISmsApp$TryLooper;

    invoke-direct {v1}, Landroid/telephony/CallISmsApp$TryLooper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .local v1, "tryLooper":Landroid/telephony/CallISmsApp$TryLooper;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/CallISmsApp$TryLooper;->increaseTryCounter()V

    .line 133
    invoke-static {}, Landroid/telephony/CallISmsApp;->getISmsApp()Lcom/motorola/android/telephony/ISmsApp;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lcom/motorola/android/telephony/ISmsApp;->calculateLength(Ljava/lang/CharSequence;Z)[I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v0}, Landroid/telephony/CallISmsApp$TryLooper;->stillNeedRetry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-static {}, Landroid/telephony/CallISmsApp;->rebindServiceISmsAppThenSleep()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "tryLooper":Landroid/telephony/CallISmsApp$TryLooper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 138
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "tryLooper":Landroid/telephony/CallISmsApp$TryLooper;
    :cond_0
    :try_start_3
    # invokes: Landroid/telephony/CallISmsApp$TryLooper;->handleException(Ljava/lang/Throwable;)V
    invoke-static {v0}, Landroid/telephony/CallISmsApp$TryLooper;->access$000(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized divideMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const-class v3, Landroid/telephony/CallISmsApp;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/telephony/CallISmsApp;->preCallInterface()V

    .line 111
    new-instance v1, Landroid/telephony/CallISmsApp$TryLooper;

    invoke-direct {v1}, Landroid/telephony/CallISmsApp$TryLooper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v1, "tryLooper":Landroid/telephony/CallISmsApp$TryLooper;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/CallISmsApp$TryLooper;->increaseTryCounter()V

    .line 115
    invoke-static {}, Landroid/telephony/CallISmsApp;->getISmsApp()Lcom/motorola/android/telephony/ISmsApp;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/motorola/android/telephony/ISmsApp;->divideMessage(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v0}, Landroid/telephony/CallISmsApp$TryLooper;->stillNeedRetry(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Landroid/telephony/CallISmsApp;->rebindServiceISmsAppThenSleep()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "tryLooper":Landroid/telephony/CallISmsApp$TryLooper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 120
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "tryLooper":Landroid/telephony/CallISmsApp$TryLooper;
    :cond_0
    :try_start_3
    # invokes: Landroid/telephony/CallISmsApp$TryLooper;->handleException(Ljava/lang/Throwable;)V
    invoke-static {v0}, Landroid/telephony/CallISmsApp$TryLooper;->access$000(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized getISmsApp()Lcom/motorola/android/telephony/ISmsApp;
    .locals 4

    .prologue
    .line 61
    const-class v2, Landroid/telephony/CallISmsApp;

    monitor-enter v2

    :try_start_0
    const-string v1, "ismsapp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .local v0, "svc":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 63
    new-instance v1, Landroid/telephony/CallISmsApp$NeedRetryException;

    const-string v3, "getService ISmsApp is null!"

    invoke-direct {v1, v3}, Landroid/telephony/CallISmsApp$NeedRetryException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 66
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/motorola/android/telephony/ISmsApp$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/ISmsApp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method private static preCallInterface()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Landroid/telephony/CallISmsApp;->registerMyPid()V

    .line 43
    return-void
.end method

.method private static rebindServiceISmsApp()V
    .locals 4

    .prologue
    .line 47
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 48
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->rebindServiceISmsApp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "CallISmsApp"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static rebindServiceISmsAppThenSleep()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Landroid/telephony/CallISmsApp;->rebindServiceISmsApp()V

    .line 102
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .local v0, "ie":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 103
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 104
    .restart local v0    # "ie":Ljava/lang/InterruptedException;
    const-string v1, "CallISmsApp"

    const-string v2, " sleep interrupted."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static registerMyPid()V
    .locals 4

    .prologue
    .line 34
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 35
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->registerPidForServiceISmsApp(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "CallISmsApp"

    const-string v3, "exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
