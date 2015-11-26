.class Lcom/motorola/android/internal/telephony/ApnListTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnListTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ApnListTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ApnListTracker;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$2;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    const-string v1, "ApnListTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "state":Ljava/lang/String;
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$2;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # getter for: Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$000(Lcom/motorola/android/internal/telephony/ApnListTracker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$2;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # getter for: Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$000(Lcom/motorola/android/internal/telephony/ApnListTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_0
    return-void
.end method
