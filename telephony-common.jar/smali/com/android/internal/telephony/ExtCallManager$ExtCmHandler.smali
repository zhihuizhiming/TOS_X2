.class public Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;
.super Lcom/android/internal/telephony/CallManager$CmHandler;
.source "ExtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ExtCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtCmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ExtCallManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/ExtCallManager;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CmHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 974
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1009
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CallManager$CmHandler;->handleMessage(Landroid/os/Message;)V

    .line 1011
    :goto_0
    :sswitch_0
    return-void

    .line 977
    :sswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 978
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    .line 979
    .local v3, "sub":I
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    # invokes: Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v4}, Lcom/android/internal/telephony/ExtCallManager;->access$000(Lcom/android/internal/telephony/ExtCallManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 981
    :cond_0
    :try_start_0
    const-string v4, "ExtCallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "silently drop incoming call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v2

    .line 984
    .local v2, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "ExtCallManager"

    const-string v5, "new ringing connection"

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 987
    .end local v2    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    iget-object v5, v4, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    invoke-virtual {v5, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 995
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "sub":I
    :sswitch_2
    const-string v4, "ExtCallManager"

    const-string v5, "EVENT_UNKNOWN_CONNECTION"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_2

    .line 997
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 998
    .local v1, "c1":Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    # invokes: Lcom/android/internal/telephony/ExtCallManager;->checkDomainSwitch(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v4, v1}, Lcom/android/internal/telephony/ExtCallManager;->access$100(Lcom/android/internal/telephony/ExtCallManager;Lcom/android/internal/telephony/Connection;)V

    .line 1000
    const-string v4, "ExtCallManager"

    const-string v5, "notify EVENT_UNKNOWN_CONNECTION"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager$ExtCmHandler;->this$0:Lcom/android/internal/telephony/ExtCallManager;

    iget-object v4, v4, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1004
    .end local v1    # "c1":Lcom/android/internal/telephony/Connection;
    :cond_2
    const-string v4, "ExtCallManager"

    const-string v5, "EVENT_UNKNOWN_CONNECTION not Connection"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xca -> :sswitch_0
    .end sparse-switch
.end method
