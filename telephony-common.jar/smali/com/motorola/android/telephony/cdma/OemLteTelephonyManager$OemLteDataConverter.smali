.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OemLteDataConverter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    return-void
.end method

.method public static byteArrToBandclassConfig(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1132
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1134
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v2

    .line 1135
    .local v2, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v2, :cond_0

    .line 1137
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1150
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v4

    .line 1138
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_1

    .line 1139
    iget-object v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    .end local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v5, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1141
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v0, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v3, v5, :cond_2

    .line 1143
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1145
    :cond_2
    iput-object v0, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToBandclassConfig([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1125
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToBandclassConfig(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToCreateLteProfileResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1344
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1346
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 1347
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 1349
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1359
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 1350
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v3, v4, :cond_1

    .line 1351
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1356
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1353
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Create_Profile_Resp;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Create_Profile_Resp;-><init>(ZB)V

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static byteArrToCreateLteProfileResp([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1337
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToCreateLteProfileResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToGetLteProfileIdByLabelResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1388
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1390
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 1391
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 1393
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1403
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 1394
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v3, v4, :cond_1

    .line 1395
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1400
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 1401
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1397
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Get_Profile_ID_Resp;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-direct {v4, v3, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Get_Profile_ID_Resp;-><init>(ZB)V

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static byteArrToGetLteProfileIdByLabelResp([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1381
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToGetLteProfileIdByLabelResp(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToLteAvailableFileRecords(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1211
    new-instance v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1213
    .local v6, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    if-eqz p0, :cond_1

    .line 1214
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1217
    .local v1, "count":B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    const/16 v8, 0x32

    if-gt v3, v8, :cond_0

    .line 1219
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 1220
    .local v7, "sid":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 1221
    .local v4, "nid":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1222
    .local v0, "bsid":I
    new-instance v8, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;

    invoke-direct {v8, v7, v4, v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;-><init>(III)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1224
    .end local v0    # "bsid":I
    .end local v4    # "nid":I
    .end local v7    # "sid":I
    :cond_0
    iput-object v5, v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .end local v1    # "count":B
    .end local v3    # "i":I
    .end local v5    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter$OEM_RIL_LTE_AVAIL_FILE_RECORD;>;"
    :cond_1
    :goto_1
    return-object v6

    .line 1226
    :catch_0
    move-exception v2

    .line 1227
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    sget-object v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v8, v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_1
.end method

.method public static byteArrToLteAvailableFileRecords([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1204
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToLteAvailableFileRecords(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToLteEhrpdApns(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 13
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1161
    new-instance v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v8}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1163
    .local v8, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v5

    .line 1164
    .local v5, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v5, :cond_0

    .line 1166
    sget-object v9, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v9, v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1191
    .end local v5    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v8

    .line 1167
    .restart local v5    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v9, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v10, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v9, v10, :cond_1

    .line 1168
    iget-object v9, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v9, v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1188
    .end local v5    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v4

    .line 1189
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    sget-object v9, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v9, v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1170
    .end local v4    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v5    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1172
    .local v3, "count":B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 1174
    new-instance v7, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;

    invoke-direct {v7}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;-><init>()V

    .line 1175
    .local v7, "ipAddr":Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;
    const/16 v9, 0x67

    new-array v2, v9, [B

    .line 1177
    .local v2, "chars":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1178
    invoke-static {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "apnName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v7, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;->type:I

    .line 1180
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v7, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;->ipv4Addr:I

    .line 1181
    const/4 v9, 0x2

    new-array v9, v9, [J

    iput-object v9, v7, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;->ipv6Addr:[J

    .line 1182
    iget-object v9, v7, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;->ipv6Addr:[J

    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 1183
    iget-object v9, v7, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;->ipv6Addr:[J

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    aput-wide v11, v9, v10

    .line 1184
    new-instance v9, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;

    invoke-direct {v9, v0, v7}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;-><init>(Ljava/lang/String;Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1186
    .end local v0    # "apnName":Ljava/lang/String;
    .end local v2    # "chars":[B
    .end local v7    # "ipAddr":Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN$IpAddr;
    :cond_2
    iput-object v1, v8, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToLteEhrpdApns([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1154
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToLteEhrpdApns(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToLteProfile(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1307
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1309
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 1310
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 1312
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1321
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 1313
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v3, v4, :cond_1

    .line 1314
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1316
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->newFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToLteProfile([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1300
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToLteProfile(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToLteStatus(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1094
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1096
    .local v2, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 1097
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 1099
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1121
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v2

    .line 1100
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v4, v5, :cond_1

    .line 1101
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1118
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1103
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;-><init>()V

    .line 1104
    .local v3, "status":Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->state:I

    .line 1105
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput-short v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->mcc:S

    .line 1106
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput-short v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->mnc:S

    .line 1107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->cellId:I

    .line 1108
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->band:B

    .line 1109
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->bandwidth:B

    .line 1110
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->ulChannel:I

    .line 1111
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->dlChannel:I

    .line 1112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->rssi:B

    .line 1113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput-short v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->rsrp:S

    .line 1114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->rsrq:B

    .line 1115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;->txPower:I

    .line 1116
    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToLteStatus([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1088
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToLteStatus(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrToLteTotOrderList(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 8
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1241
    new-instance v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    invoke-direct {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;-><init>()V

    .line 1243
    .local v5, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;

    move-result-object v1

    .line 1244
    .local v1, "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    if-nez v1, :cond_0

    .line 1246
    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 1260
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :goto_0
    return-object v5

    .line 1247
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_0
    iget-object v6, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    sget-object v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    if-eq v6, v7, :cond_1

    .line 1248
    iget-object v6, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1257
    .end local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v0

    .line 1258
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    iput-object v6, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->errno:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0

    .line 1250
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "header":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 1252
    .local v4, "ratCount":S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 1253
    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1255
    :cond_2
    iput-object v3, v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static byteArrToLteTotOrderList([B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 1234
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

    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->byteArrToLteTotOrderList(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;

    move-result-object v0

    goto :goto_0
.end method

.method public static lteBsrTimerToByteArray(IILjava/lang/String;)[B
    .locals 4
    .param p0, "val"    # I
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 1065
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1066
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1067
    const/4 v2, 0x4

    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1071
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 1072
    .local v1, "data":[B
    return-object v1
.end method

.method public static lteCreateProfileRequestToByteArray(ILcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;ILjava/lang/String;)[B
    .locals 3
    .param p0, "profileType"    # I
    .param p1, "profile"    # Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;
    .param p2, "msgId"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 1326
    const/16 v1, 0xd

    .line 1327
    .local v1, "size":B
    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1328
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1329
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p2, v1, v2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1332
    invoke-virtual {p1, v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->serialize(Ljava/nio/ByteBuffer;)V

    .line 1333
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static lteDeleteProfileRequestToByteArray(IBILjava/lang/String;)[B
    .locals 3
    .param p0, "profileType"    # I
    .param p1, "profileId"    # B
    .param p2, "msgId"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 1421
    const/4 v1, 0x5

    .line 1422
    .local v1, "size":B
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1423
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1424
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p2, v1, v2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1427
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1428
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static lteGetProfileIdByLabelRequestToByteArray(ILjava/lang/String;I)[B
    .locals 5
    .param p0, "profileType"    # I
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "msgId"    # I

    .prologue
    .line 1364
    const/16 v3, 0xe

    .line 1366
    .local v3, "size":B
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1367
    .local v1, "buf":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1368
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v1, p2, v3, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    .line 1371
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1372
    .local v0, "b":[B
    array-length v4, v0

    rsub-int/lit8 v4, v4, 0xa

    new-array v2, v4, [B

    .line 1374
    .local v2, "pad":[B
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1375
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1376
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1377
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method public static lteOptionToByteArray(ZILjava/lang/String;)[B
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1077
    const/16 v3, 0x13

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1078
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1079
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v2, v3, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1081
    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1083
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 1084
    .local v1, "data":[B
    return-object v1

    .line 1081
    .end local v1    # "data":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static lteReadProfileRequestToByteArray(IBI)[B
    .locals 3
    .param p0, "profileType"    # I
    .param p1, "profileId"    # B
    .param p2, "msgId"    # I

    .prologue
    .line 1289
    const/4 v1, 0x5

    .line 1290
    .local v1, "size":B
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1291
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1292
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p2, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    .line 1294
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1295
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1296
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static lteSetDefaultProfileRequestToByteArray(IIBILjava/lang/String;)[B
    .locals 3
    .param p0, "profileType"    # I
    .param p1, "profileFamily"    # I
    .param p2, "profileId"    # B
    .param p3, "msgId"    # I
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 1433
    const/16 v1, 0x9

    .line 1434
    .local v1, "size":B
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1435
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1436
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p3, v1, v2, p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1439
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1440
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1441
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public static lteTotOrderListToByteArray([IILjava/lang/String;)[B
    .locals 6
    .param p0, "list"    # [I
    .param p1, "msgId"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 1265
    array-length v5, p0

    int-to-short v3, v5

    .line 1266
    .local v3, "numRat":S
    const/16 v4, 0x3e

    .line 1268
    .local v4, "size":B
    const/16 v5, 0x50

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1269
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1270
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p1, v4, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1275
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1276
    aget v5, p0, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1275
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1278
    :cond_0
    array-length v2, p0

    .line 1279
    :goto_1
    const/16 v5, 0xf

    if-ge v2, v5, :cond_1

    .line 1280
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1283
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 1284
    .local v1, "data":[B
    return-object v1
.end method

.method public static lteUpdateProfileRequestToByteArray(IBLcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;ILjava/lang/String;)[B
    .locals 3
    .param p0, "profileType"    # I
    .param p1, "profileId"    # B
    .param p2, "profile"    # Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;
    .param p3, "msgId"    # I
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/16 v1, 0xe

    .line 1409
    .local v1, "size":B
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1410
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1411
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p3, v1, v2, p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1414
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1415
    invoke-virtual {p2, v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->serialize(Ljava/nio/ByteBuffer;)V

    .line 1416
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
