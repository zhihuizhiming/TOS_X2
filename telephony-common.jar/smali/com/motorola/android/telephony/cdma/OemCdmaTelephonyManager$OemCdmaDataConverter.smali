.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemCdmaDataConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActiveProfileToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;ILjava/lang/String;)[B
    .locals 5
    .param p0, "active_prof"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6248
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6249
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6251
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6254
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6255
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveProfileToByteArr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6256
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6258
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveProfileToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    :cond_1
    return-object v1
.end method

.method public static BCToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;ILjava/lang/String;)[B
    .locals 5
    .param p0, "bc"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6234
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6235
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6237
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6240
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6241
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BCToByteArr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6242
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6243
    .local v1, "data":[B
    return-object v1
.end method

.method public static aKeyInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;ILjava/lang/String;)[B
    .locals 6
    .param p0, "info"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1a

    .line 5329
    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5331
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5333
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5337
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 5338
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5340
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aKeyInfoToByteArr: info.akey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5345
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aKeyInfoToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    :cond_2
    return-object v1
.end method

.method public static byteArrToAKeyInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6658
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6661
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6663
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 6664
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6683
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6667
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;-><init>()V

    .line 6669
    .local v3, "info":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    const/16 v5, 0x1a

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    .line 6671
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 6672
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6671
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6674
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToAKeyInfo: akey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6677
    :cond_2
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6679
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    :catch_0
    move-exception v0

    .line 6680
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToAKeyInfo([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6648
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToAKeyInfo: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6650
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToAKeyInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToActiveProfile(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7393
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7396
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 7398
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 7400
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7414
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 7401
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_1

    .line 7402
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7410
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 7411
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7405
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;-><init>()V

    .line 7406
    .local v0, "active_prof":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    .line 7407
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToActiveProfile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;->profile:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7408
    :cond_2
    iput-object v0, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToActiveProfile([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7380
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToActiveProfile: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7382
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToActiveProfile(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToBC(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7352
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7355
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 7357
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 7359
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7373
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 7360
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_1

    .line 7361
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7369
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 7370
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7364
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;-><init>()V

    .line 7365
    .local v0, "bc":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    .line 7366
    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToBC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7367
    iput-object v0, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToBC([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7339
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToBC: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7341
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToBC(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToCpStatus(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6452
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6453
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToCpStatusSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    .line 6455
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToCpStatusVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToCpStatus([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6442
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToCpStatus: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6444
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToCpStatus(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrToCpStatusSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x28

    const/4 v7, 0x6

    .line 6543
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6546
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 6548
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 6550
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6643
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6551
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 6552
    iget-object v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6639
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 6640
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 6555
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;-><init>()V

    .line 6557
    .local v0, "cp":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    .line 6559
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    .line 6560
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    .line 6561
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    .line 6562
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    .line 6563
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    .line 6564
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    .line 6565
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    .line 6566
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    .line 6567
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    .line 6568
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    .line 6569
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    .line 6570
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    .line 6571
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    .line 6572
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    .line 6573
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    .line 6574
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    .line 6575
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    .line 6576
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    .line 6577
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    .line 6578
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    .line 6579
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    iput-byte v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    .line 6581
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6582
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6583
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6585
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->PRevInUse:I

    .line 6586
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bid:I

    .line 6587
    const/4 v5, 0x6

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetPn:[I

    .line 6588
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 6589
    iget-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetPn:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    .line 6588
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6591
    :cond_2
    const/4 v5, 0x6

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetStrength:[I

    .line 6592
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_3

    .line 6593
    iget-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetStrength:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    .line 6592
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6595
    :cond_3
    const/16 v5, 0x28

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborSetPn:[I

    .line 6596
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_4

    .line 6597
    iget-object v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborSetPn:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3

    .line 6596
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6599
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLat:I

    .line 6600
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLon:I

    .line 6602
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.fer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6603
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestActivePilot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestActiveStrength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6607
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestNeighborPilot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6609
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bestNeighborStrength = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6611
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6613
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.channel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6614
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.serviceOption = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6616
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.droppedCallCounter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6618
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.txPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6619
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.band = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.activePilotCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6622
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.neighborPilotCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6624
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.candPilotCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6626
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.cpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6627
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.lastCallIndicator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6629
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.lnaStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6631
    :cond_16
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.rssi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6632
    :cond_17
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.callCounter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6634
    :cond_18
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToCpStatus: cp.bsLon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLon:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6637
    :cond_19
    iput-object v0, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static byteArrToCpStatusVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6461
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6464
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 6466
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6467
    iget-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6538
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6470
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;-><init>()V

    .line 6472
    .local v0, "cp":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    .line 6473
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    .line 6474
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    .line 6475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    .line 6476
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    .line 6477
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    .line 6478
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    .line 6479
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    .line 6480
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    .line 6481
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    .line 6482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    .line 6483
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    .line 6484
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    .line 6485
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    .line 6486
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    .line 6487
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    .line 6488
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    .line 6489
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    .line 6490
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    .line 6491
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    .line 6492
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    .line 6493
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    .line 6495
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.fer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6496
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestActivePilot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestActiveStrength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6500
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestNeighborPilot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6502
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.bestNeighborStrength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6504
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6505
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6506
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.channel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6507
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.serviceOption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6509
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.droppedCallCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6511
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.sCallCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6513
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.txPower = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6514
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.band = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6515
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.activePilotCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6517
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.neighborPilotCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6519
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.candPilotCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6521
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.cpState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6522
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.lastCallIndicator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6524
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.lnaStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6526
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.rssi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6527
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.callCounter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6529
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToCpStatus: cp.is2000System = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6532
    :cond_16
    iput-object v0, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6534
    .end local v0    # "cp":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 6535
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToDataRate(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6311
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6314
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6316
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6317
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6331
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6320
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;

    move-result-object v2

    .line 6323
    .local v2, "rate":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToDataRate: rate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6325
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6327
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "rate":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    :catch_0
    move-exception v0

    .line 6328
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToDataRate([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6301
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToDataRate: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6303
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToDataRate(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToEvdoData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6739
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6740
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToEvdoDataSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    .line 6742
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToEvdoDataVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToEvdoData([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6728
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToEvdoData: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6730
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToEvdoData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrToEvdoDataSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v7, 0x10

    .line 6813
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6816
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6818
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 6820
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6894
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6821
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 6822
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6890
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 6891
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 6825
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;-><init>()V

    .line 6827
    .local v4, "status":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    .line 6828
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    .line 6829
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    .line 6830
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    .line 6831
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    .line 6832
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    .line 6833
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    .line 6834
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    .line 6835
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    .line 6836
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    .line 6837
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    .line 6838
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    .line 6839
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    .line 6841
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    .line 6842
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->dropCount:I

    .line 6846
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    .line 6847
    const/16 v5, 0x10

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sectorIds:[I

    .line 6848
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 6849
    iget-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sectorIds:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v2

    .line 6848
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6851
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotEnergy:I

    .line 6852
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    .line 6853
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sinr:I

    .line 6854
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->anAuthStatus:I

    .line 6857
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.hdrChanNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6859
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.uatiColorCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6861
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.txUati = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.pilotPn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6865
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.hdrRssi = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6867
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.rxPwrRx0Dbm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6869
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.rxPwrRx1Dbm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6871
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.measPkts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.errPkts = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6875
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.sessionState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6877
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.atState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6879
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.ip = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6880
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.userCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6882
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.hybridMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6884
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.macIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6886
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToEvdoData: status.drcCover = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6888
    :cond_12
    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static byteArrToEvdoDataVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6748
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6751
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6753
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6754
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6808
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 6757
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;-><init>()V

    .line 6759
    .local v3, "status":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    .line 6760
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    .line 6761
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    .line 6762
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    .line 6763
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    .line 6764
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    .line 6765
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    .line 6766
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    .line 6767
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    .line 6768
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    .line 6769
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    .line 6770
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    .line 6771
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    .line 6772
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    .line 6774
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.hdrChanNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6776
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.uatiColorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6778
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.txUati = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.pilotPn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6782
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.hdrRssi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6784
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.rxPwrRx0Dbm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6786
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.rxPwrRx1Dbm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6788
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.measPkts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6790
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.errPkts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6792
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.sessionState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.atState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6796
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6797
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.userCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6799
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToEvdoData: status.hybridMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6802
    :cond_e
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6804
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v3    # "status":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    :catch_0
    move-exception v0

    .line 6805
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToGetSetDdtmDefaultPreferenceResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7426
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7428
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7429
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 7431
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7440
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 7432
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v3, v4, :cond_1

    .line 7433
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7437
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7438
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7435
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToGetSetDdtmDefaultPreferenceResp([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 7418
    if-nez p0, :cond_0

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToGetSetDdtmDefaultPreferenceResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 5170
    if-nez p0, :cond_0

    .line 5171
    const-string v2, "null"

    .line 5178
    :goto_0
    return-object v2

    .line 5172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5174
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 5176
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5178
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static byteArrToHybridMode(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6381
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6384
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6386
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6387
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6401
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6390
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;

    move-result-object v2

    .line 6393
    .local v2, "mode":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToHybridMode: rev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6395
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6397
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "mode":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    :catch_0
    move-exception v0

    .line 6398
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToHybridMode([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6371
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToHybridMode: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHybridMode(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToMobilePRev(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6346
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6349
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6351
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6352
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6366
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 6355
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;

    move-result-object v3

    .line 6358
    .local v3, "rev":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToMobilePRev: rev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6360
    :cond_1
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6362
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v3    # "rev":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    :catch_0
    move-exception v0

    .line 6363
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToMobilePRev([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6336
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToMobilePRev: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6338
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToMobilePRev(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToNamInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6909
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6910
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamInfoSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    .line 6912
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamInfoVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToNamInfo([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6899
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToNamInfo: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamInfo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrToNamInfoSprint(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    .line 7043
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7046
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7048
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 7050
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7210
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 7051
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 7052
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7206
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7207
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 7055
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;-><init>()V

    .line 7057
    .local v3, "namInfo":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    .line 7058
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 7059
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7058
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7061
    :cond_2
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v8, :cond_3

    .line 7062
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7061
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7065
    :cond_3
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    .line 7066
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 7067
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7066
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7069
    :cond_4
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v8, :cond_5

    .line 7070
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7069
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7073
    :cond_5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    .line 7074
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    .line 7075
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    .line 7077
    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    .line 7078
    const/4 v2, 0x0

    :goto_5
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 7079
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7078
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7082
    :cond_6
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v7, :cond_7

    .line 7083
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7082
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7086
    :cond_7
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    .line 7087
    const/4 v2, 0x0

    :goto_7
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 7088
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7087
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 7091
    :cond_8
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v7, :cond_9

    .line 7092
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7091
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7095
    :cond_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    .line 7096
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    .line 7097
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    .line 7098
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    .line 7099
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    .line 7101
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    .line 7102
    const/4 v2, 0x0

    :goto_9
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_a

    .line 7103
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7102
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 7105
    :cond_a
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v7, :cond_b

    .line 7106
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7105
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7109
    :cond_b
    const/16 v5, 0xf

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    .line 7110
    const/4 v2, 0x0

    :goto_b
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_c

    .line 7111
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7110
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 7113
    :cond_c
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v8, :cond_d

    .line 7114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 7113
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 7117
    :cond_d
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    .line 7121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    .line 7122
    iget v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_e

    .line 7123
    const/4 v5, 0x0

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    .line 7126
    :cond_e
    const/4 v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    .line 7127
    const/4 v2, 0x0

    :goto_d
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    array-length v5, v5

    if-ge v2, v5, :cond_f

    .line 7128
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7127
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 7131
    :cond_f
    const/4 v5, 0x4

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    .line 7132
    const/4 v2, 0x0

    :goto_e
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    array-length v5, v5

    if-ge v2, v5, :cond_10

    .line 7133
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7132
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7137
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    .line 7138
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    .line 7139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    .line 7145
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    .line 7146
    const/4 v2, 0x0

    :goto_f
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v5, v5

    if-ge v2, v5, :cond_11

    .line 7147
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 7146
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 7151
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mdn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7153
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7155
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7157
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7159
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.scm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7161
    :cond_16
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsi11_12 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7163
    :cond_17
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7165
    :cond_18
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7167
    :cond_19
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7169
    :cond_1a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7171
    :cond_1b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7173
    :cond_1c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.vocoderType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7175
    :cond_1d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMccT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7177
    :cond_1e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7179
    :cond_1f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.accessOverloadClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7184
    :cond_20
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMAddrNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7186
    :cond_21
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMS2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7188
    :cond_22
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMS1_0 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7192
    :cond_23
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mob_term_home = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    :cond_24
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mob_term_sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7196
    :cond_25
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_26

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mob_term_nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7201
    :cond_26
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_27

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.newSpcCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7204
    :cond_27
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static byteArrToNamInfoVZW(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x4

    .line 6918
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6921
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6923
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 6924
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7038
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6927
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;-><init>()V

    .line 6929
    .local v3, "namInfo":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    .line 6930
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 6931
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6930
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6933
    :cond_1
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v8, :cond_2

    .line 6934
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6933
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6937
    :cond_2
    const/16 v5, 0xa

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    .line 6938
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 6939
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6938
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6941
    :cond_3
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v8, :cond_4

    .line 6942
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6941
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6945
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    .line 6946
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    .line 6947
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    .line 6949
    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    .line 6950
    const/4 v2, 0x0

    :goto_5
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 6951
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6950
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6954
    :cond_5
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v7, :cond_6

    .line 6955
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6954
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6958
    :cond_6
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    .line 6959
    const/4 v2, 0x0

    :goto_7
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 6960
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6959
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6963
    :cond_7
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v7, :cond_8

    .line 6964
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6963
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6967
    :cond_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    .line 6968
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    .line 6969
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    .line 6970
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    .line 6971
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    .line 6973
    const/4 v5, 0x3

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    .line 6974
    const/4 v2, 0x0

    :goto_9
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_9

    .line 6975
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6974
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6977
    :cond_9
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v7, :cond_a

    .line 6978
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6977
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6981
    :cond_a
    const/16 v5, 0xf

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    .line 6982
    const/4 v2, 0x0

    :goto_b
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v5, v5

    if-ge v2, v5, :cond_b

    .line 6983
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6982
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6985
    :cond_b
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v8, :cond_c

    .line 6986
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 6985
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 6989
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    .line 6991
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    .line 6992
    const/4 v2, 0x0

    :goto_d
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v5, v5

    if-ge v2, v5, :cond_d

    .line 6993
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6992
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6997
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.mdn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6999
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7001
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7003
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.h_nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7005
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.scm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7008
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsi11_12 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7010
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7012
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7014
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.priCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7016
    :cond_16
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7018
    :cond_17
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.secCdmaB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7020
    :cond_18
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.vocoderType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7022
    :cond_19
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiMccT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7024
    :cond_1a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.imsiT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7026
    :cond_1b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.accessOverloadClass = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7029
    :cond_1c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToNamInfo: namInfo.newSpcCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7032
    :cond_1d
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7034
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "namInfo":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    :catch_0
    move-exception v0

    .line 7035
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToNamPrlVersion(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7277
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7280
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7282
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 7283
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7298
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 7286
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;-><init>()V

    .line 7287
    .local v3, "ver":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    .line 7289
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToNamPrlVersion: prlVerison = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    :cond_1
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7294
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v3    # "ver":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;
    :catch_0
    move-exception v0

    .line 7295
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToNamPrlVersion([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7266
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToNamPrlVersion: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7269
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToNamPrlVersion(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToRdeData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7313
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7316
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7319
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_1

    .line 7321
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7327
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    move-result-object v2

    .line 7328
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;

    .line 7335
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    :goto_1
    return-object v3

    .line 7322
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 7324
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7330
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7331
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "byteArrToRdeData: buffer underflow"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7332
    :cond_2
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_1
.end method

.method public static byteArrToRdeData([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7303
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToRdeData: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7305
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToRdeData(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToRevOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6416
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6419
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6421
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6422
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6437
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6425
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;

    move-result-object v2

    .line 6428
    .local v2, "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToRevOption: option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6431
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6433
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    :catch_0
    move-exception v0

    .line 6434
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToRevOption([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6406
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToRevOption: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToRevOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToServiceOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6275
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6278
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6280
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_0

    .line 6281
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6296
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v3

    .line 6284
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;

    move-result-object v2

    .line 6287
    .local v2, "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteArrToServiceOption: option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6290
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6292
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "option":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    :catch_0
    move-exception v0

    .line 6293
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToServiceOption([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6264
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToServiceOption: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6267
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToServiceOption(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToSidNidPairs(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v8, 0x14

    .line 7231
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 7234
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 7236
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 7237
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7261
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 7240
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;-><init>()V

    .line 7242
    .local v3, "pairs":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    const/16 v5, 0x14

    new-array v5, v5, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    .line 7244
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_3

    .line 7245
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    new-instance v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;-><init>()V

    aput-object v6, v5, v2

    .line 7246
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    .line 7247
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    .line 7249
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToSidNidPairs: pairs.sidNid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7251
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToSidNidPairs: pairs.sidNid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].nid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7244
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7255
    :cond_3
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 7257
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "pairs":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    :catch_0
    move-exception v0

    .line 7258
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0
.end method

.method public static byteArrToSidNidPairs([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 7218
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToSidNidPairs: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7220
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToSidNidPairs(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # [B

    .prologue
    .line 5197
    const/4 v0, 0x0

    .line 5198
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v2, p0, v0

    if-eqz v2, :cond_0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_0
    move v0, v1

    .line 5199
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static byteArrToStringLog([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 5182
    if-nez p0, :cond_0

    .line 5183
    const-string v2, "null"

    .line 5190
    :goto_0
    return-object v2

    .line 5184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5186
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 5188
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5190
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static byteArrToSubsidyPasswd(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 6699
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 6702
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 6704
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_0

    .line 6705
    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 6723
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 6708
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;-><init>()V

    .line 6710
    .local v3, "password":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    .line 6711
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 6712
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v2

    .line 6711
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6714
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byteArrToSubsidyPasswd: password = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-static {v7}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6717
    :cond_2
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6719
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    .end local v3    # "password":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;
    :catch_0
    move-exception v0

    .line 6720
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public static byteArrToSubsidyPasswd([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 6688
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteArrToSubsidyPasswd: data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6691
    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToSubsidyPasswd(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static cpStatusToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B
    .locals 1
    .param p0, "cp"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5904
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5905
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->cpStatusToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B

    move-result-object v0

    .line 5907
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->cpStatusToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static cpStatusToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B
    .locals 6
    .param p0, "cp"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    .line 5990
    const/16 v3, 0x142

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5992
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5994
    const/16 v3, 0x130

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v3, v4, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5998
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5999
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6000
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6001
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6002
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6003
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6004
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6005
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6006
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6007
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6008
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6009
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6010
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6011
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6012
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6013
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->PRevInUse:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6014
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6015
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6016
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6017
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6018
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6020
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6022
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 6023
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetPn:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6022
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6025
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 6026
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activeSetStrength:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6025
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6028
    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x28

    if-ge v2, v3, :cond_2

    .line 6029
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborSetPn:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6028
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6031
    :cond_2
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLat:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6032
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bsLon:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6034
    iget-byte v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6036
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.fer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6037
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestActivePilot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6039
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestActiveStrength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6041
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestNeighborPilot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6043
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.bestNeighborStrength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6045
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.sid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.nid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.channel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6048
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.serviceOption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.droppedCallCounter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.txPower = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6053
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.band = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.activePilotCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6056
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.neighborPilotCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.candPilotCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.cpState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6061
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.lastCallIndicator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6063
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.lnaStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.rssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    :cond_15
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: cp.callCounter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6067
    :cond_16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6069
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpStatusToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6071
    :cond_17
    return-object v1
.end method

.method private static cpStatusToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;ILjava/lang/String;)[B
    .locals 5
    .param p0, "cp"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5914
    const/16 v2, 0x67

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5916
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5918
    const/16 v2, 0x55

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5922
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5923
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5924
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5925
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5926
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5927
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5928
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5929
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5930
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5931
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5932
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5933
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5934
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5935
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5936
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5937
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5938
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5939
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5940
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5941
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5942
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5943
    iget-byte v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5945
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.fer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->fer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5946
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestActivePilot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActivePilot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestActiveStrength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestActiveStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5950
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestNeighborPilot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborPilot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.bestNeighborStrength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->bestNeighborStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5954
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5955
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.nid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->nid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5956
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5957
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.serviceOption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->serviceOption:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5959
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.droppedCallCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->droppedCallCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5961
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.sCallCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->sCallCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5963
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.txPower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->txPower:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5964
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.band = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->band:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5965
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.activePilotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->activePilotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5967
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.neighborPilotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->neighborPilotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.candPilotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->candPilotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.cpState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->cpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5972
    :cond_10
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.lastCallIndicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lastCallIndicator:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5974
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.lnaStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->lnaStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->rssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.callCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->callCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5977
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: cp.is2000System = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;->is2000System:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5980
    :cond_15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5982
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpStatusToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    :cond_16
    return-object v1
.end method

.method public static dataRateToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;ILjava/lang/String;)[B
    .locals 5
    .param p0, "dataRate"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5303
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5305
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5307
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5311
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5313
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataRateToByteArr: dataRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5317
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataRateToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5319
    :cond_1
    return-object v1
.end method

.method public static evdoDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B
    .locals 1
    .param p0, "status"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6077
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6078
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->evdoDataToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B

    move-result-object v0

    .line 6080
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->evdoDataToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static evdoDataToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B
    .locals 6
    .param p0, "status"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6143
    const/16 v3, 0xa2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6145
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6147
    const/16 v3, 0x90

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v3, v4, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6151
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6152
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6153
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6154
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6155
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6156
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6157
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6158
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6159
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6160
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6161
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6162
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6163
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6164
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->dropCount:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6165
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6166
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6168
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 6169
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sectorIds:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6171
    :cond_0
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotEnergy:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6172
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6173
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sinr:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6174
    iget v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->anAuthStatus:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6177
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.hdrChanNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6179
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.uatiColorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6181
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.txUati = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6182
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.pilotPn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6183
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.hdrRssi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6184
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.rxPwrRx0Dbm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6186
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.rxPwrRx1Dbm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6188
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.measPkts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6190
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.errPkts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.sessionState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.atState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6194
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.ip = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.userCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    :cond_d
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.hybridMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6200
    :cond_e
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.macIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->macIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6202
    :cond_f
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: status.drcCover = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->drcCover:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6205
    :cond_10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6206
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoDataToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6207
    :cond_11
    return-object v1
.end method

.method private static evdoDataToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;ILjava/lang/String;)[B
    .locals 5
    .param p0, "status"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 6087
    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6089
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6091
    const/16 v2, 0x38

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 6095
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6096
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6097
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6098
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6099
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6100
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6101
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6102
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6103
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6104
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6105
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6106
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6107
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6108
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6110
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.hdrChanNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrChanNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6112
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.uatiColorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->uatiColorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6114
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.txUati = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->txUati:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.pilotPn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->pilotPn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6116
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.hdrRssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hdrRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6117
    :cond_4
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.rxPwrRx0Dbm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx0Dbm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6119
    :cond_5
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.rxPwrRx1Dbm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->rxPwrRx1Dbm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6121
    :cond_6
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.measPkts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->measPkts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6123
    :cond_7
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.errPkts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->errPkts:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6124
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.sessionState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->sessionState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6126
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.atState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->atState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6127
    :cond_a
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.ip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->ip:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    :cond_b
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.userCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->userCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    :cond_c
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: status.hybridMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;->hybridMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6133
    :cond_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6135
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evdoDataToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    :cond_e
    return-object v1
.end method

.method public static genericSIMToByteArr(I[B)[B
    .locals 5
    .param p0, "len"    # I
    .param p1, "command"    # [B

    .prologue
    .line 6213
    add-int/lit8 v2, p0, 0x8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6216
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const v2, 0x2050013

    add-int/lit8 v3, p0, 0x1

    invoke-static {v0, v2, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeGenericHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 6221
    int-to-byte v2, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6222
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6224
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 6226
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericSIMToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    :cond_0
    return-object v1
.end method

.method public static hybridModeToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;ILjava/lang/String;)[B
    .locals 5
    .param p0, "hybridModeState"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5821
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5823
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5825
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5829
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5831
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hybridModeToByteArr: hybridModeState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5834
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5836
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hybridModeToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5838
    :cond_1
    return-object v1
.end method

.method public static mobilePRevToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;ILjava/lang/String;)[B
    .locals 5
    .param p0, "rev"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5793
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5795
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5797
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5801
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5803
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobilePRevToByteArr: rev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5807
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobilePRevToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    :cond_1
    return-object v1
.end method

.method public static namInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B
    .locals 1
    .param p0, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5417
    # invokes: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5418
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->namInfoToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B

    move-result-object v0

    .line 5420
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->namInfoToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static namInfoToByteArrSprint(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B
    .locals 11
    .param p0, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 5611
    const/16 v4, 0x90

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5613
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5615
    const/16 v4, 0x7e

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5619
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v3, v4

    .line 5620
    .local v3, "len":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 5783
    :cond_0
    :goto_0
    return-object v1

    .line 5623
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 5626
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5625
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5628
    :cond_3
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v9, :cond_4

    .line 5629
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5628
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5632
    :cond_4
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v3, v4

    .line 5633
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 5636
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 5639
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5638
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5641
    :cond_6
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v9, :cond_7

    .line 5642
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5641
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5645
    :cond_7
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5646
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5647
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5649
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5650
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5651
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.scm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5653
    :cond_a
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v3, v4

    .line 5654
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5657
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsi11_12 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    .line 5660
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5659
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5663
    :cond_c
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v8, :cond_d

    .line 5664
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5663
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5667
    :cond_d
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v3, v4

    .line 5668
    if-ne v3, v10, :cond_0

    .line 5671
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5673
    :cond_e
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_f

    .line 5674
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5673
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5677
    :cond_f
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v8, :cond_10

    .line 5678
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5677
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5681
    :cond_10
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5682
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5683
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5684
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5685
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5687
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5689
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5691
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.vocoderType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5698
    :cond_15
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v3, v4

    .line 5699
    if-ne v3, v10, :cond_0

    .line 5702
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMccT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5704
    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_17

    .line 5705
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5704
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5707
    :cond_17
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v8, :cond_18

    .line 5708
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5707
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5711
    :cond_18
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v3, v4

    .line 5712
    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 5715
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5717
    :cond_19
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_1a

    .line 5718
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5717
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5720
    :cond_1a
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v9, :cond_1b

    .line 5721
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5720
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5724
    :cond_1b
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5725
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.accessOverloadClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    :cond_1c
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    if-nez v4, :cond_1d

    .line 5731
    const/16 v4, 0xff

    iput v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    .line 5733
    :cond_1d
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5734
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMAddrNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMAddrNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5737
    :cond_1e
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    array-length v3, v4

    .line 5738
    if-ne v3, v8, :cond_0

    .line 5741
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMS1_0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5742
    :cond_1f
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_20

    .line 5743
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS1_0:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5742
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5746
    :cond_20
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    array-length v3, v4

    .line 5747
    if-ne v3, v8, :cond_0

    .line 5750
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMS2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5751
    :cond_21
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_22

    .line 5752
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMS2:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5751
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5756
    :cond_22
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5757
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mob_term_home = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_home:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    :cond_23
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5760
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mob_term_sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5762
    :cond_24
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5763
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mob_term_nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mob_term_nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5769
    :cond_25
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v3, v4

    .line 5770
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 5773
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.newSpcCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5775
    :cond_26
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_27

    .line 5776
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5775
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5779
    :cond_27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5781
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static namInfoToByteArrVZW(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B
    .locals 11
    .param p0, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 5427
    const/16 v4, 0x78

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5429
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5431
    const/16 v4, 0x66

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5435
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v3, v4

    .line 5436
    .local v3, "len":I
    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 5605
    :cond_0
    :goto_0
    return-object v1

    .line 5439
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.mdn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 5442
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5441
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5444
    :cond_3
    const/16 v2, 0xa

    :goto_2
    if-ge v2, v9, :cond_4

    .line 5445
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5444
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5448
    :cond_4
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v3, v4

    .line 5449
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 5452
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 5455
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5454
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5457
    :cond_6
    const/16 v2, 0xa

    :goto_4
    if-ge v2, v9, :cond_7

    .line 5458
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5457
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5461
    :cond_7
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5462
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5463
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5465
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_sid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    :cond_8
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.h_nid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->h_nid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    :cond_9
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.scm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->scm:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    :cond_a
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v3, v4

    .line 5470
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 5473
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsi11_12 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    :cond_b
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_c

    .line 5476
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5475
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5479
    :cond_c
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v8, :cond_d

    .line 5480
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5479
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5483
    :cond_d
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v3, v4

    .line 5484
    if-ne v3, v10, :cond_0

    .line 5487
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    :cond_e
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_f

    .line 5490
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5489
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5493
    :cond_f
    const/4 v2, 0x3

    :goto_8
    if-ge v2, v8, :cond_10

    .line 5494
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5493
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5497
    :cond_10
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5498
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5499
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5500
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5501
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5503
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    :cond_11
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.priCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->priCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    :cond_12
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaA:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :cond_13
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.secCdmaB = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->secCdmaB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    :cond_14
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.vocoderType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->vocoderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    :cond_15
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v3, v4

    .line 5515
    if-ne v3, v10, :cond_0

    .line 5518
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiMccT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    :cond_16
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_17

    .line 5521
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5520
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5523
    :cond_17
    const/4 v2, 0x3

    :goto_a
    if-ge v2, v8, :cond_18

    .line 5524
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5523
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5527
    :cond_18
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v3, v4

    .line 5528
    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    .line 5531
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.imsiT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    :cond_19
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_1a

    .line 5534
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5533
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5536
    :cond_1a
    const/16 v2, 0xf

    :goto_c
    if-ge v2, v9, :cond_1b

    .line 5537
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5536
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 5540
    :cond_1b
    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5541
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.accessOverloadClass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->accessOverloadClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    :cond_1c
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v3, v4

    .line 5592
    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 5595
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: namInfo.newSpcCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    invoke-static {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    :cond_1d
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_1e

    .line 5598
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    aget-byte v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5597
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5601
    :cond_1e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5603
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "namInfoToByteArr: data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static namPrlVersionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;ILjava/lang/String;)[B
    .locals 5
    .param p0, "prl"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5875
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5877
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5879
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5883
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5885
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "namPrlVersionToByteArr: prlVerison = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;->prlVerison:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5889
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5891
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "namPrlVersionToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5894
    :cond_1
    return-object v1
.end method

.method public static rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B
    .locals 1
    .param p0, "rde"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5205
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B

    move-result-object v0

    return-object v0
.end method

.method public static rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B
    .locals 5
    .param p0, "rde"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .prologue
    const/4 v3, 0x0

    .line 5212
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->SIZE()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, 0x12

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5214
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5216
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->SIZE()I

    move-result v2

    :goto_1
    invoke-static {v0, p1, v2, p3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5220
    if-eqz p0, :cond_0

    .line 5221
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5222
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5223
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5224
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    if-eqz v2, :cond_4

    .line 5225
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    invoke-interface {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5227
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    invoke-interface {v2, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;->serialize(Ljava/nio/ByteBuffer;)V

    .line 5234
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5235
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rdeDataToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    :cond_1
    return-object v1

    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    :cond_2
    move v2, v3

    .line 5212
    goto :goto_0

    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    move v2, v3

    .line 5216
    goto :goto_1

    .line 5229
    :cond_4
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5230
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method public static final readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 7521
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;-><init>()V

    .line 7524
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    .line 7525
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgLength:I

    .line 7526
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->fromInt(I)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 7527
    const/4 v3, 0x6

    new-array v3, v3, [B

    iput-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    .line 7528
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 7529
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 7528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7532
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7533
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: msgLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7534
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7537
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHookHeader: spcLockCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7543
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .end local v2    # "i":I
    :cond_4
    :goto_1
    return-object v1

    .line 7539
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 7540
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final readHookHeader([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 7515
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v0

    goto :goto_0
.end method

.method public static revOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;ILjava/lang/String;)[B
    .locals 5
    .param p0, "evdoRev"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5849
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5851
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5853
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5857
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5859
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revOptionToByteArr: evdoRev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5861
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5863
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revOptionToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5865
    :cond_1
    return-object v1
.end method

.method public static roamingListToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;ILjava/lang/String;)[B
    .locals 5
    .param p0, "roaming_list"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5394
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5396
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5398
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->size()I

    move-result v2

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5400
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->serialize(Ljava/nio/ByteBuffer;)V

    .line 5402
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5404
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingListToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    :cond_0
    return-object v1
.end method

.method public static serviceOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;ILjava/lang/String;)[B
    .locals 5
    .param p0, "serviceOption"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5247
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5249
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5251
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5255
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5257
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceOptionToByteArr: serviceOption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5262
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OemCdmaTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceOptionToByteArr: data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :cond_1
    return-object v1
.end method

.method public static sidNidPairsToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;ILjava/lang/String;)[B
    .locals 6
    .param p0, "sidNidPairs"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 5359
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->SIZE()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5361
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5363
    invoke-virtual {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->SIZE()I

    move-result v3

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v3, v4, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 5367
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 5368
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5369
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5371
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sidNidPairsToByteArr: sidNidPairs.sidNid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].sid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->sid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sidNidPairsToByteArr: sidNidPairs.sidNid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].nid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;->nid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5367
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5377
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5379
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sidNidPairsToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    :cond_3
    return-object v1
.end method

.method public static subsidyPasswdToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;)[B
    .locals 7
    .param p0, "password"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;

    .prologue
    const/4 v6, 0x6

    .line 5272
    const/16 v3, 0x18

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5274
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5276
    const v3, 0x200000a

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-static {v0, v3, v6, v4, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V

    .line 5282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 5283
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 5282
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5285
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subsidyPasswdToByteArr: password.password = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;->password:[B

    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5288
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 5290
    .local v1, "data":[B
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subsidyPasswdToByteArr: data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5293
    :cond_2
    return-object v1
.end method

.method public static writeGenericHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I

    .prologue
    .line 7505
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7506
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7508
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeGenericHookHeader: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7509
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeGenericHookHeader: msgLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7510
    :cond_1
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .prologue
    .line 7469
    const-string v0, "000000"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 7471
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 7476
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 7477
    .local v0, "arrSpcLockCode":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 7478
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 7477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7481
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V

    .line 7482
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "msgId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .param p4, "spcLockCode"    # [B

    .prologue
    .line 7487
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7488
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7489
    invoke-virtual {p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->toInt()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 7492
    aget-byte v1, p4, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 7491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7495
    :cond_0
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7496
    :cond_1
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: msgLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7497
    :cond_2
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7498
    :cond_3
    # getter for: Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->access$500()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OemCdmaTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeHookHeader: spcLockCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7500
    :cond_4
    return-void
.end method

.method public static writeHookHeader(Ljava/nio/ByteBuffer;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "header"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    .prologue
    .line 7462
    iget v0, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgId:I

    iget v1, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->msgLength:I

    iget-object v2, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B

    invoke-static {p0, v0, v1, v2, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;[B)V

    .line 7464
    return-void
.end method

.method public static writeHookHeader(I)[B
    .locals 2
    .param p0, "msgId"    # I

    .prologue
    .line 7445
    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {p0, v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B

    move-result-object v0

    return-object v0
.end method

.method public static writeHookHeader(IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)[B
    .locals 2
    .param p0, "msgId"    # I
    .param p1, "len"    # I
    .param p2, "err"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .prologue
    .line 7452
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7453
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7455
    invoke-static {v0, p0, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    .line 7456
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
