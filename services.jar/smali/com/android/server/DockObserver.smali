.class final Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_DEBOUNCE_DELAY:I = 0x4b0

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final XRING_IMPACT_DELAY:I = 0x3e8


# instance fields
.field private mBroadcastDockState:I

.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastXRingTime:J

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mSystemReady:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mXRingReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 61
    iput v3, p0, Lcom/android/server/DockObserver;->mBroadcastDockState:I

    .line 62
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DockObserver;->mLastXRingTime:J

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 67
    iput v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 68
    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 151
    new-instance v1, Lcom/android/server/DockObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mXRingReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v1, Lcom/android/server/DockObserver$2;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 80
    iget-object v1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 81
    iget-object v1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 84
    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v1}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.motorola.nfc.action.ACTION_NFC_XRING_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DockObserver;->mXRingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/DockObserver;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/android/server/DockObserver;->mLastXRingTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method private handleDockStateChange()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 185
    iget-object v7, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 186
    :try_start_0
    sget-object v6, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dock state changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v6, p0, Lcom/android/server/DockObserver;->mBroadcastDockState:I

    .line 191
    iget-object v6, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 194
    sget-object v6, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v8, "Device not provisioned, skipping dock broadcast"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v7

    .line 249
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const-string v6, "android.intent.extra.DOCK_STATE"

    iget v8, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v6, "dock_sounds_enabled"

    const/4 v8, 0x1

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 207
    const/4 v5, 0x0

    .line 208
    .local v5, "whichSound":Ljava/lang/String;
    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v6, :cond_5

    .line 209
    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-eq v6, v10, :cond_1

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-eq v6, v12, :cond_1

    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v6, v13, :cond_4

    .line 212
    :cond_1
    const-string v5, "desk_undock_sound"

    .line 226
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 227
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "soundPath":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 230
    .local v4, "soundUri":Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 231
    iget-object v6, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 232
    .local v2, "sfx":Landroid/media/Ringtone;
    if-eqz v2, :cond_3

    .line 233
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 234
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 244
    .end local v2    # "sfx":Landroid/media/Ringtone;
    .end local v3    # "soundPath":Ljava/lang/String;
    .end local v4    # "soundUri":Landroid/net/Uri;
    .end local v5    # "whichSound":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 247
    iget-object v6, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    monitor-exit v7

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 213
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v5    # "whichSound":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v6, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v6, v11, :cond_2

    .line 214
    const-string v5, "car_undock_sound"

    goto :goto_1

    .line 217
    :cond_5
    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v6, v10, :cond_6

    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v6, v12, :cond_6

    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v6, v13, :cond_7

    .line 220
    :cond_6
    const-string v5, "desk_dock_sound"

    goto :goto_1

    .line 221
    :cond_7
    iget v6, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v6, v11, :cond_2

    .line 222
    const-string v5, "car_dock_sound"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private init()V
    .locals 7

    .prologue
    .line 121
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 123
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 124
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 127
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 128
    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    return-void

    .line 130
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private updateLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 165
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    iget v2, p0, Lcom/android/server/DockObserver;->mBroadcastDockState:I

    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v2, v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "delay":J
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v2, :cond_3

    .line 174
    iget-wide v2, p0, Lcom/android/server/DockObserver;->mLastXRingTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DockObserver;->mLastXRingTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 176
    :cond_2
    const-wide/16 v0, 0x4b0

    .line 179
    :cond_3
    iget-object v2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 180
    iget-object v2, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 97
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 103
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, "newState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v2, :cond_1

    .line 105
    iget v2, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 106
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 107
    iget-boolean v2, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 111
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v1    # "newState":I
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 146
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
