.class Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;
.super Landroid/os/Handler;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetricsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/WifiMetrics;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/WifiMetrics;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    .line 582
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 583
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 587
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 601
    :goto_0
    return-void

    .line 590
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/provider/CheckinEvent;

    .line 595
    .local v0, "ce":Lcom/motorola/android/provider/CheckinEvent;
    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "ce":Lcom/motorola/android/provider/CheckinEvent;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
