.class Lcom/android/server/ConnectivityService$5;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 4445
    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 4448
    if-nez p2, :cond_1

    .line 4465
    :cond_0
    :goto_0
    return-void

    .line 4449
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4450
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4452
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isWifiTethered()Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4453
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHotspotState:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4454
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # setter for: Lcom/android/server/ConnectivityService;->mHotspotState:Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$4402(Lcom/android/server/ConnectivityService;Z)Z

    .line 4455
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v3

    aget-object v2, v2, v3

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    goto :goto_0

    .line 4458
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHotspotState:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4459
    const-string v1, "Hotspot disabled, reset TCP buffers"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 4460
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mHotspotState:Z
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$4402(Lcom/android/server/ConnectivityService;Z)Z

    .line 4461
    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)I

    move-result v3

    aget-object v2, v2, v3

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    goto :goto_0
.end method
