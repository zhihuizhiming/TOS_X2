.class Landroid/media/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V
    .locals 1
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 1612
    iput-object p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1610
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1613
    iput-object p2, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 1614
    iput p3, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    .line 1615
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .prologue
    .line 1618
    const/4 v3, 0x0

    .line 1619
    .local v3, "newModeOwnerPid":I
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 1620
    :try_start_0
    const-string v4, "AudioService"

    const-string/jumbo v6, "setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1622
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1623
    const-string v4, "AudioService"

    const-string/jumbo v6, "unregistered setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    if-eqz v3, :cond_0

    .line 1631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1632
    .local v0, "ident":J
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->disconnectBluetoothSco(I)V
    invoke-static {v4, v3}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;I)V

    .line 1633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1635
    .end local v0    # "ident":J
    :cond_0
    return-void

    .line 1625
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v8, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    invoke-virtual {v4, v6, v7, v8}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v3

    goto :goto_0

    .line 1627
    .end local v2    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1646
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 1638
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1642
    iput p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1643
    return-void
.end method
