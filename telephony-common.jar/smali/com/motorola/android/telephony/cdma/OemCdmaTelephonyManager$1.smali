.class Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;
.super Landroid/os/Handler;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private nextRequest()V
    .locals 5

    .prologue
    .line 376
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_IDLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    # setter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;
    invoke-static {v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$302(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    .line 377
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    const/4 v2, 0x0

    # setter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$002(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;Landroid/os/Message;)Landroid/os/Message;

    .line 379
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$400(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$400(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;

    .line 383
    .local v0, "req":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    iget-object v2, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->data:[B

    iget-object v3, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->msg:Landroid/os/Message;

    iget-object v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;->msgH:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 340
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->MSG_TIMEOUT:I

    if-ne v2, v3, :cond_3

    .line 341
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$000(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Message;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 343
    const-string v3, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message timed out: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$000(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$000(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->nextRequest()V

    .line 373
    :cond_0
    :goto_1
    return-void

    .line 343
    :cond_1
    const-string v2, "null"

    goto :goto_0

    .line 349
    :cond_2
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "Ignore timeout message, do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :cond_3
    const/4 v1, 0x1

    .line 356
    .local v1, "next":Z
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$000(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Message;

    move-result-object v2

    if-eq p1, v2, :cond_4

    .line 357
    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected message received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    .line 361
    :cond_4
    if-eqz v1, :cond_5

    .line 362
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$100(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->sleep()V

    .line 364
    :cond_5
    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling user handler for msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$200(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 367
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->this$0:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$200(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    .end local v0    # "m":Landroid/os/Message;
    :cond_6
    if-eqz v1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;->nextRequest()V

    goto :goto_1
.end method
