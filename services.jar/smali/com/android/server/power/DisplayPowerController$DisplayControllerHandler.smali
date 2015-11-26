.class final Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 1480
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1509
    :goto_0
    return-void

    .line 1487
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1491
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$500(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1495
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    # invokes: Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$600(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1499
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerController;->mHbmProtection:Z
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$702(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 1500
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    const-string v1, "protection"

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/power/DisplayPowerController;->setHbmEnabled(ZLjava/lang/String;I)V

    goto :goto_0

    .line 1505
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    # invokes: Lcom/android/server/power/DisplayPowerController;->scheduleHbmReset(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/android/server/power/DisplayPowerController;->access$800(Lcom/android/server/power/DisplayPowerController;Landroid/content/Context;)V

    goto :goto_0

    .line 1485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
