.class Lcom/android/server/DockObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$000(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 155
    :try_start_0
    # getter for: Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/DockObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XRing detected"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$300(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 158
    iget-object v0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/DockObserver;->mLastXRingTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/DockObserver;->access$402(Lcom/android/server/DockObserver;J)J

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
