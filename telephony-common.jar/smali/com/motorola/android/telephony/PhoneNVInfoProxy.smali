.class public Lcom/motorola/android/telephony/PhoneNVInfoProxy;
.super Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.source "PhoneNVInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNVInfoProxy"

.field private static sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;


# instance fields
.field private mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    return-void
.end method

.method private constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V
    .locals 1
    .param p1, "phoneNVInfo"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 71
    const-string v0, "iphonenvinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "iphonenvinfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    :cond_0
    return-void
.end method

.method private getNVIndexForCA(I)I
    .locals 3
    .param p1, "primaryBandId"    # I

    .prologue
    .line 401
    if-lez p1, :cond_0

    const/16 v0, 0x2c

    if-le p1, v0, :cond_1

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNVIndexForCA: invalid primaryBandId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND1_CARRIER_AGGREGATION:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getTimerFromBuffer(I)I
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 237
    .local v2, "timer":I
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v1

    .line 238
    .local v1, "fullData":[B
    if-nez v1, :cond_0

    .line 239
    const/4 v3, -0x1

    .line 247
    :goto_0
    return v3

    .line 242
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 245
    const-string v3, "PhoneNVInfoProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getTimer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 247
    goto :goto_0
.end method

.method public static init(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/PhoneNVInfoProxy;
    .locals 3
    .param p0, "phoneNVInfo"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 57
    const-class v1, Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V

    sput-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    .line 63
    :goto_0
    sget-object v0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->sInstance:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    monitor-exit v1

    return-object v0

    .line 61
    :cond_0
    const-string v0, "PhoneNVInfoProxy"

    const-string v2, "init() called multiple times"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTimerToBuffer(II)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "timer"    # I

    .prologue
    .line 251
    const-string v3, "PhoneNVInfoProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setTimer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v2

    .line 254
    .local v2, "fullData":[B
    if-nez v2, :cond_0

    .line 255
    const/4 v3, 0x5

    .line 262
    :goto_0
    return v3

    .line 258
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 259
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x8

    invoke-virtual {v0, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 262
    .local v1, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v3, p1, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(I[B)I

    move-result v3

    goto :goto_0
.end method

.method private static toBitSet([B)Ljava/util/BitSet;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x8

    .line 340
    new-instance v0, Ljava/util/BitSet;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 341
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 342
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 343
    aget-byte v3, p0, v1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    and-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 344
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 342
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method

.method private static toByteArray(Ljava/util/BitSet;)[B
    .locals 6
    .param p0, "bits"    # Ljava/util/BitSet;

    .prologue
    .line 353
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 354
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 355
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    div-int/lit8 v2, v1, 0x8

    aget-byte v3, v0, v2

    const/4 v4, 0x1

    rem-int/lit8 v5, v1, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 354
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkForFtsAvailability()Z
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_FTS:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public checkForHiddenMenuAvailability()Z
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_PROGRAM:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public get1XDataServiceTransferTimer()I
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getCAEnable(II)Z
    .locals 5
    .param p1, "primaryBandId"    # I
    .param p2, "secondaryBandId"    # I

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getNVIndexForCA(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    .line 413
    .local v0, "CAStatus":[B
    if-eqz v0, :cond_0

    .line 414
    invoke-static {v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->toBitSet([B)Ljava/util/BitSet;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 418
    :goto_0
    return v1

    .line 416
    :cond_0
    const-string v2, "PhoneNVInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCAEnable: No CA NV item for Primary band: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCAStatus(I)[B
    .locals 3
    .param p1, "primaryBandId"    # I

    .prologue
    .line 423
    iget-object v1, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getNVIndexForCA(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    .local v0, "bytesCAstatus":[B
    return-object v0
.end method

.method public getCDMAAkeyHashValue()[B
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEHRPDStatus()I
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getHDRSCPSessionStatus()I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getHdrAnAuthPasswd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoHEXString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIPV6Enable()Z
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsCdmaScanTimer()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getTimerFromBuffer(I)I

    move-result v0

    return v0
.end method

.method public getImsEmpaSupported()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsHomeDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsMultimodeScanTimer()I
    .locals 1

    .prologue
    .line 266
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getTimerFromBuffer(I)I

    move-result v0

    return v0
.end method

.method public getImsPcscfPort()I
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "port":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 111
    :goto_0
    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getImsPhoneContextURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSigComp()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsFormat()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsOverIP()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsT1Timer()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsT2Timer()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsTestMode()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsTfTimer()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getLTEBandEnable(I)Z
    .locals 4
    .param p1, "bandId"    # I

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, "ret":Z
    if-lez p1, :cond_0

    const/16 v2, 0x2c

    if-gt p1, v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    .line 367
    .local v0, "bandsStatus":[B
    if-eqz v0, :cond_0

    .line 368
    invoke-static {v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->toBitSet([B)Ljava/util/BitSet;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 371
    .end local v0    # "bandsStatus":[B
    :cond_0
    return v1
.end method

.method public getLTEBandsEnableStatus()[B
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getModemAPN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getModemAPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecretCodeEnabled()Z
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_AKEY:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .param p1, "ob"    # Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 293
    return-void
.end method

.method public set1XDataServiceTransferTimer(I)I
    .locals 2
    .param p1, "timer"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setCAEnable([BIIZ)I
    .locals 5
    .param p1, "bandsCAStatus"    # [B
    .param p2, "primaryBandId"    # I
    .param p3, "secondaryBandId"    # I
    .param p4, "enable"    # Z

    .prologue
    .line 428
    const/4 v1, 0x5

    .line 429
    .local v1, "ret":I
    if-eqz p1, :cond_1

    if-lez p3, :cond_1

    const/16 v2, 0x2c

    if-gt p3, v2, :cond_1

    .line 431
    invoke-static {p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->toBitSet([B)Ljava/util/BitSet;

    move-result-object v0

    .line 432
    .local v0, "bs":Ljava/util/BitSet;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    .line 433
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {p0, p2}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->getNVIndexForCA(I)I

    move-result v3

    invoke-static {v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->toByteArray(Ljava/util/BitSet;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(I[B)I

    move-result v1

    .line 445
    .end local v0    # "bs":Ljava/util/BitSet;
    :goto_1
    return v1

    .line 435
    .restart local v0    # "bs":Ljava/util/BitSet;
    :cond_0
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    .line 439
    .end local v0    # "bs":Ljava/util/BitSet;
    :cond_1
    if-nez p1, :cond_2

    .line 440
    const-string v2, "PhoneNVInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCAEnable: null bandsCAStatus for Primary band "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    :cond_2
    const-string v2, "PhoneNVInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCAEnable: invalid Secondary band Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setEHRPDStatus(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setHDRSCPSessionStatus(I)I
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setIPV6Enable(Z)I
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 332
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsCdmaScanTimer(I)I
    .locals 1
    .param p1, "cdma"    # I

    .prologue
    .line 287
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->setTimerToBuffer(II)I

    move-result v0

    return v0
.end method

.method public setImsHomeDomain(Ljava/lang/String;)I
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsMultimodeScanTimer(I)I
    .locals 1
    .param p1, "mm"    # I

    .prologue
    .line 270
    sget v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->setTimerToBuffer(II)I

    move-result v0

    return v0
.end method

.method public setImsPcscfPort(I)I
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsSmsFormat(Z)I
    .locals 2
    .param p1, "format"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsSmsOverIP(Z)I
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsT1Timer(I)I
    .locals 2
    .param p1, "t1"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsT2Timer(I)I
    .locals 2
    .param p1, "t2"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsTestMode(Z)I
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsTfTimer(I)I
    .locals 2
    .param p1, "tf"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    sget v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setLTEBandEnable([BIZ)I
    .locals 6
    .param p1, "bandsStatus"    # [B
    .param p2, "bandId"    # I
    .param p3, "enable"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 380
    const/4 v2, 0x5

    .line 381
    .local v2, "ret":I
    if-lez p2, :cond_1

    const/16 v3, 0x2c

    if-gt p2, v3, :cond_1

    .line 382
    new-array v0, v5, [B

    .line 383
    .local v0, "bcConfig":[B
    invoke-static {p1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    invoke-static {v0}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->toBitSet([B)Ljava/util/BitSet;

    move-result-object v1

    .line 385
    .local v1, "bs":Ljava/util/BitSet;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 386
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 390
    :goto_0
    invoke-static {v1}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->toByteArray(Ljava/util/BitSet;)[B

    move-result-object v3

    invoke-static {v3, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-object v3, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v4, 0x35

    invoke-virtual {v3, v4, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(I[B)I

    move-result v2

    .line 397
    .end local v0    # "bcConfig":[B
    .end local v1    # "bs":Ljava/util/BitSet;
    :goto_1
    return v2

    .line 388
    .restart local v0    # "bcConfig":[B
    .restart local v1    # "bs":Ljava/util/BitSet;
    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0

    .line 395
    .end local v0    # "bcConfig":[B
    .end local v1    # "bs":Ljava/util/BitSet;
    :cond_1
    const-string v3, "PhoneNVInfoProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLTEBandEnable: Invalid bandId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apn_str"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .param p1, "ob"    # Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 297
    return-void
.end method
