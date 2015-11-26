.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 1

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    .line 1569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnMasterTetherSettings()Z

    .line 1574
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1576
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iput v1, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mRetryCount:I

    .line 1577
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    .line 1578
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1579
    return-void

    :cond_0
    move v0, v1

    .line 1578
    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffUpstreamMobileConnection()Z

    .line 1583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 1584
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1587
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TetherModeAliveState.processMessage what="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/4 v9, 0x1

    .line 1589
    .local v9, "retValue":Z
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 1665
    const/4 v9, 0x0

    .line 1668
    :cond_0
    :goto_0
    return v9

    .line 1591
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1593
    .local v10, "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    const/16 v11, 0xc

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1598
    .end local v10    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1600
    .restart local v10    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1601
    .local v4, "index":I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_2

    .line 1602
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TetherModeAlive removing notifyee "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1604
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1605
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOffMasterTetherSettings()Z

    goto :goto_0

    .line 1608
    :cond_1
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TetherModeAlive still has "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " live requests:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .local v7, "o":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1614
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "o":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TetherModeAliveState UNREQUESTED has unknown who: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1619
    .end local v4    # "index":I
    .end local v10    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkInfo;

    .line 1620
    .local v5, "info":Landroid/net/NetworkInfo;
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    .line 1621
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    .line 1625
    if-eqz v5, :cond_5

    .line 1626
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1627
    :try_start_0
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$4800(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1628
    const-string v11, "connectivity"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1630
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1632
    .local v1, "cm":Landroid/net/IConnectivityManager;
    const/4 v8, 0x0

    .line 1633
    .local v8, "props":Landroid/net/LinkProperties;
    const/4 v6, 0x0

    .line 1635
    .local v6, "isV6Connected":Z
    :try_start_1
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v8

    .line 1636
    invoke-virtual {p0, v1, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->isIpv6Connected(Landroid/net/IConnectivityManager;Landroid/net/LinkProperties;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 1640
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v6, :cond_4

    .line 1641
    :cond_3
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 1644
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "cm":Landroid/net/IConnectivityManager;
    .end local v6    # "isV6Connected":Z
    .end local v8    # "props":Landroid/net/LinkProperties;
    :cond_4
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1647
    :cond_5
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    goto/16 :goto_0

    .line 1637
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "cm":Landroid/net/IConnectivityManager;
    .restart local v6    # "isV6Connected":Z
    .restart local v8    # "props":Landroid/net/LinkProperties;
    :catch_0
    move-exception v2

    .line 1638
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "Tethering"

    const-string v13, "Exception querying ConnectivityManager"

    invoke-static {v11, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1644
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "cm":Landroid/net/IConnectivityManager;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "isV6Connected":Z
    .end local v8    # "props":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 1647
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 1652
    .end local v5    # "info":Landroid/net/NetworkInfo;
    :pswitch_3
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v12, :cond_0

    .line 1657
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->turnOnUpstreamMobileConnection(I)Z

    goto/16 :goto_0

    .line 1661
    :pswitch_4
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    invoke-virtual {p0, v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->chooseUpstreamType(Z)V

    .line 1662
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;->mTryCell:Z

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 1589
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
