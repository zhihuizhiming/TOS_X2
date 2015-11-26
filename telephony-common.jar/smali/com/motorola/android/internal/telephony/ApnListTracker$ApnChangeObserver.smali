.class Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "ApnListTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ApnListTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/ApnListTracker;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # getter for: Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$000(Lcom/motorola/android/internal/telephony/ApnListTracker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # getter for: Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$000(Lcom/motorola/android/internal/telephony/ApnListTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    return-void
.end method
