.class Lcom/android/server/ConnectivityService$6;
.super Lcom/android/server/ConnectivityService$CheckMp$CallBack;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->checkMobileProvisioning(I)I
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
    .line 4605
    iput-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$CheckMp$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method onComplete(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckMp.onComplete: result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 4609
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    # getter for: Lcom/android/server/ConnectivityService;->sTypeMobileHipri:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$4500()I

    move-result v4

    aget-object v3, v3, v4

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 4611
    .local v1, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckMp.onComplete: ignore unexpected result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$4900(Ljava/lang/String;)V

    .line 4666
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4667
    return-void

    .line 4616
    :pswitch_0
    const-string v3, "CheckMp.onComplete: ignore, connected or no connection"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 4620
    :pswitch_1
    const-string v3, "CheckMp.onComplete: warm sim"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 4621
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    .line 4622
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4623
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    .line 4625
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckMp.onComplete: warm (redirected), url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 4627
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->sTypeMobileHipri:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$4500()I

    move-result v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v7, v4, v5, v2}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4631
    :cond_1
    const-string v3, "CheckMp.onComplete: warm (redirected), no url"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 4636
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    .line 4637
    .restart local v2    # "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckMp.onComplete: warm (no dns/tcp), url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 4639
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->sTypeMobileHipri:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$4500()I

    move-result v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v7, v4, v5, v2}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V

    .line 4644
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsProvisioningNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4645
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v0, v3, v6

    check-cast v0, Landroid/net/MobileDataStateTracker;

    .line 4647
    .local v0, "mdst":Landroid/net/MobileDataStateTracker;
    invoke-virtual {v0, v6}, Landroid/net/MobileDataStateTracker;->setInternalDataEnable(Z)V

    goto/16 :goto_0

    .line 4649
    .end local v0    # "mdst":Landroid/net/MobileDataStateTracker;
    :cond_2
    const-string v3, "CheckMp.onComplete: warm (no dns/tcp), no url"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4657
    .end local v2    # "url":Ljava/lang/String;
    :pswitch_3
    const-string v3, "CheckMp.onComplete: provisioning started"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 4658
    iget-object v3, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mIsStartingProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 4611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
