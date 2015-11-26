.class Lcom/motorola/android/internal/telephony/ApnListTracker$1;
.super Landroid/os/Handler;
.source "ApnListTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/ApnListTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ApnListTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$1;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    const-string v0, "ApnListTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$1;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # getter for: Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$100(Lcom/motorola/android/internal/telephony/ApnListTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 91
    const-string v0, "ApnListTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    const-string v0, "ApnListTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified event msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$1;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # invokes: Lcom/motorola/android/internal/telephony/ApnListTracker;->onRecordsLoaded()V
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$200(Lcom/motorola/android/internal/telephony/ApnListTracker;)V

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker$1;->this$0:Lcom/motorola/android/internal/telephony/ApnListTracker;

    # invokes: Lcom/motorola/android/internal/telephony/ApnListTracker;->onApnChanged()V
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->access$300(Lcom/motorola/android/internal/telephony/ApnListTracker;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
