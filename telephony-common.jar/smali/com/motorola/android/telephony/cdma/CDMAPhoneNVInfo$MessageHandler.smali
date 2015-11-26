.class Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;
.super Landroid/os/Handler;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 1354
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1355
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1359
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v5, 0x5

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1360
    const-string v4, "PhoneNVInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMAPhoneVNINfo get msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->MSG_TIMEOUT:I

    if-ne v4, v5, :cond_1

    .line 1365
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    .line 1366
    :try_start_0
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1368
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v5, 0x6

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1368
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1375
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 1380
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->sleep()V

    .line 1382
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000016

    if-ne v4, v5, :cond_3

    .line 1383
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1384
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1386
    .local v2, "reqId":Ljava/lang/Integer;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 1388
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v3, v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>([B)V

    .line 1389
    .local v3, "resp":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1391
    iget-object v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v4, v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    if-eqz v4, :cond_2

    .line 1393
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$600(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1419
    .end local v3    # "resp":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_2
    :goto_1
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    .line 1420
    :try_start_2
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1395
    .restart local v3    # "resp":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToInteger(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)I

    move-result v5

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    goto :goto_1

    .line 1398
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToBool(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Z

    move-result v5

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z

    goto :goto_1

    .line 1401
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToString(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1405
    :pswitch_3
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$1002(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;[B)[B

    goto :goto_1

    .line 1410
    :pswitch_4
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->rde:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    iget-object v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;->rdeToHEXString(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1424
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reqId":Ljava/lang/Integer;
    .end local v3    # "resp":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000015

    if-ne v4, v5, :cond_5

    .line 1425
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1426
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1427
    .restart local v2    # "reqId":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 1428
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v3, v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>([BZ)V

    .line 1429
    .restart local v3    # "resp":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->header:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;

    iget v5, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;->error:I

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1432
    .end local v3    # "resp":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    .line 1433
    :try_start_3
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1435
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 1437
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reqId":Ljava/lang/Integer;
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000018

    if-ne v4, v5, :cond_7

    .line 1438
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1440
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    .line 1441
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1442
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 1444
    .local v1, "rawdata":[Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1448
    .end local v1    # "rawdata":[Ljava/lang/String;
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    .line 1449
    :try_start_4
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1451
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .line 1453
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_7
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x2000019

    if-ne v4, v5, :cond_9

    .line 1454
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1456
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 1457
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1458
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v1, v4

    check-cast v1, [Ljava/lang/String;

    .line 1460
    .restart local v1    # "rawdata":[Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    aget-object v5, v1, v8

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1463
    .end local v1    # "rawdata":[Ljava/lang/String;
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    .line 1464
    :try_start_5
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1466
    monitor-exit v5

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v4

    .line 1469
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_9
    iget v4, p1, Landroid/os/Message;->what:I

    const v5, 0x20000ba

    if-ne v4, v5, :cond_0

    .line 1471
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;->this$0:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    # setter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    invoke-static {v4, v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I

    .line 1473
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v5

    monitor-enter v5

    .line 1474
    :try_start_6
    # getter for: Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->access$200()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1476
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v4

    .line 1393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
