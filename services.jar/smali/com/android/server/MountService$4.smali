.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 726
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v15}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v15

    const-string v16, "volume"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "list"

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v15

    const/16 v16, 0x6e

    invoke-static/range {v15 .. v16}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v12

    .line 729
    .local v12, "vols":[Ljava/lang/String;
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v13, v1, v3

    .line 730
    .local v13, "volstr":Ljava/lang/String;
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 733
    .local v10, "tok":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v4, v10, v15

    .line 734
    .local v4, "label":Ljava/lang/String;
    array-length v15, v10

    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    const/4 v15, 0x3

    aget-object v15, v10, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    const/4 v15, 0x3

    aget-object v11, v10, v15

    .line 736
    .local v11, "uuid":Ljava/lang/String;
    :goto_1
    const/4 v15, 0x1

    aget-object v6, v10, v15

    .line 737
    .local v6, "path":Ljava/lang/String;
    const-string v9, "removed"

    .line 740
    .local v9, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v15}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageVolume;

    .line 742
    .local v14, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    const/4 v15, 0x2

    :try_start_2
    aget-object v15, v10, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 745
    .local v8, "st":I
    if-nez v8, :cond_4

    .line 746
    const-string v9, "removed"

    .line 759
    :goto_2
    if-eqz v14, :cond_1

    if-eqz v9, :cond_1

    .line 762
    if-eqz v11, :cond_0

    .line 763
    invoke-virtual {v14, v11}, Landroid/os/storage/StorageVolume;->setUuid(Ljava/lang/String;)V

    .line 765
    :cond_0
    invoke-virtual {v14, v4}, Landroid/os/storage/StorageVolume;->setUserLabel(Ljava/lang/String;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v15, v14, v9}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 729
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "st":I
    .end local v9    # "state":Ljava/lang/String;
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v14    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 742
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v9    # "state":Ljava/lang/String;
    .restart local v11    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 770
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "state":Ljava/lang/String;
    .end local v10    # "tok":[Ljava/lang/String;
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "vols":[Ljava/lang/String;
    .end local v13    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 771
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "MountService"

    const-string v16, "Error processing initial volume state"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v15}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 773
    .local v7, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v7, :cond_3

    .line 774
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v16, "removed"

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v15, v7, v0}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 782
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "primary":Landroid/os/storage/StorageVolume;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v15}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 785
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v15}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 788
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v15}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 789
    return-void

    .line 747
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v8    # "st":I
    .restart local v9    # "state":Ljava/lang/String;
    .restart local v10    # "tok":[Ljava/lang/String;
    .restart local v11    # "uuid":Ljava/lang/String;
    .restart local v12    # "vols":[Ljava/lang/String;
    .restart local v13    # "volstr":Ljava/lang/String;
    .restart local v14    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v15, 0x1

    if-ne v8, v15, :cond_5

    .line 748
    :try_start_5
    const-string v9, "unmounted"

    goto :goto_2

    .line 749
    :cond_5
    const/4 v15, 0x4

    if-ne v8, v15, :cond_6

    .line 750
    const-string v9, "mounted"

    .line 751
    const-string v15, "MountService"

    const-string v16, "Media already mounted on daemon connection"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 752
    :cond_6
    const/4 v15, 0x7

    if-ne v8, v15, :cond_7

    .line 753
    const-string v9, "shared"

    .line 754
    const-string v15, "MountService"

    const-string v16, "Media shared on daemon connection"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 756
    :cond_7
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Unexpected state %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
