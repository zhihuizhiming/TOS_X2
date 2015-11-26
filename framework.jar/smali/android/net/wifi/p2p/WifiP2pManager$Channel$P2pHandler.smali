.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 713
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 714
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 715
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 719
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v8, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;
    invoke-static {v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v2

    .line 720
    .local v2, "listener":Ljava/lang/Object;
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 833
    const-string v7, "WifiP2pManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignored "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v2    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 722
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 723
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 724
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v8, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_0

    .line 750
    :sswitch_1
    if-eqz v2, :cond_0

    .line 751
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v2    # "listener":Ljava/lang/Object;
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v7}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 777
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_2
    if-eqz v2, :cond_0

    .line 778
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v2    # "listener":Ljava/lang/Object;
    invoke-interface {v2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 782
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 783
    .local v3, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v2, :cond_0

    .line 784
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v2    # "listener":Ljava/lang/Object;
    invoke-interface {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 788
    .end local v3    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 789
    .local v6, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v2, :cond_0

    .line 790
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v2    # "listener":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 794
    .end local v6    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 795
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v2, :cond_0

    .line 796
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v2    # "listener":Ljava/lang/Object;
    invoke-interface {v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .line 800
    .end local v0    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 801
    .local v4, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    invoke-static {v7, v4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    .line 804
    .end local v4    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 805
    .local v1, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v2, :cond_0

    .line 806
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .end local v2    # "listener":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_0

    .line 812
    .end local v1    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_8
    if-eqz v2, :cond_0

    .line 813
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WpsResult;

    .local v5, "result":Landroid/net/wifi/WpsResult;
    move-object v7, v2

    .line 814
    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    iget-object v8, v5, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;->onWpsP2pStartSuccess(Ljava/lang/String;)V

    .line 816
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 817
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Ljava/util/HashMap;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 822
    .end local v5    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_9
    if-eqz v2, :cond_0

    .line 823
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    .end local v2    # "listener":Ljava/lang/Object;
    invoke-interface {v2}, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;->onWpsP2pCompletion()V

    goto/16 :goto_0

    .line 827
    .restart local v2    # "listener":Ljava/lang/Object;
    :sswitch_a
    if-eqz v2, :cond_0

    .line 828
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    .end local v2    # "listener":Ljava/lang/Object;
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v7}, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;->onWpsP2pFailure(I)V

    goto/16 :goto_0

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22002 -> :sswitch_1
        0x22003 -> :sswitch_2
        0x22005 -> :sswitch_1
        0x22006 -> :sswitch_2
        0x22008 -> :sswitch_1
        0x22009 -> :sswitch_2
        0x2200b -> :sswitch_1
        0x2200c -> :sswitch_2
        0x2200e -> :sswitch_1
        0x2200f -> :sswitch_2
        0x22011 -> :sswitch_1
        0x22012 -> :sswitch_2
        0x22014 -> :sswitch_3
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_5
        0x2201d -> :sswitch_1
        0x2201e -> :sswitch_2
        0x22020 -> :sswitch_1
        0x22021 -> :sswitch_2
        0x22023 -> :sswitch_1
        0x22024 -> :sswitch_2
        0x22026 -> :sswitch_1
        0x22027 -> :sswitch_2
        0x22029 -> :sswitch_1
        0x2202a -> :sswitch_2
        0x2202c -> :sswitch_1
        0x2202d -> :sswitch_2
        0x2202f -> :sswitch_1
        0x22030 -> :sswitch_2
        0x22032 -> :sswitch_6
        0x22034 -> :sswitch_1
        0x22035 -> :sswitch_2
        0x22037 -> :sswitch_1
        0x22038 -> :sswitch_2
        0x2203a -> :sswitch_7
        0x2203c -> :sswitch_1
        0x2203d -> :sswitch_2
        0x2203f -> :sswitch_1
        0x22040 -> :sswitch_2
        0x22042 -> :sswitch_1
        0x22043 -> :sswitch_2
        0x22045 -> :sswitch_1
        0x22046 -> :sswitch_2
        0x22048 -> :sswitch_1
        0x22049 -> :sswitch_2
        0x2204a -> :sswitch_8
        0x2204b -> :sswitch_9
        0x2204c -> :sswitch_a
        0x2204f -> :sswitch_2
        0x22050 -> :sswitch_1
        0x22052 -> :sswitch_1
        0x22053 -> :sswitch_2
    .end sparse-switch
.end method
