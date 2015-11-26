.class Lcom/android/internal/telephony/IccSmsInterfaceManager$TimerUnbindISmsApp;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerUnbindISmsApp"
.end annotation


# static fields
.field private static final WHAT_REQUEST_UNBIND:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TimerUnbindISmsApp;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/IccSmsInterfaceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p2, "x1"    # Lcom/android/internal/telephony/IccSmsInterfaceManager$1;

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$TimerUnbindISmsApp;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$TimerUnbindISmsApp;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->tryUnbindISmsApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$TimerUnbindISmsApp;->renewTimer()V

    .line 342
    :cond_0
    return-void
.end method

.method public renewTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    return-void
.end method
