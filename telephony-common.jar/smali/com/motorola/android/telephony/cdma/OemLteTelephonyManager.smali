.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Get_Profile_ID_Resp;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Create_Profile_Resp;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_TOT_Order;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_BST;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_EHRPD_APN;,
        Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Status;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field public static final LTE_BAND_25_FLAG:J = 0x1000000L

.field public static final LTE_BAND_26_FLAG:J = 0x2000000L

.field public static final LTE_BAND_41_FLAG:J = 0x10000000000L

.field public static final OEM_RIL_REQUEST_LTE_CREATE_PROFILE:I = 0x20000c7

.field public static final OEM_RIL_REQUEST_LTE_DELETE_PROFILE:I = 0x20000ca

.field public static final OEM_RIL_REQUEST_LTE_GET_ACTIVE_EHRPD_APN:I = 0x20000c1

.field public static final OEM_RIL_REQUEST_LTE_GET_BSR_TIMER:I = 0x20000bc

.field public static final OEM_RIL_REQUEST_LTE_GET_ID_BY_LABEL:I = 0x20000c8

.field public static final OEM_RIL_REQUEST_LTE_GET_LTE_DATA:I = 0x20000c0

.field public static final OEM_RIL_REQUEST_LTE_GET_LTE_OPTION:I = 0x20000be

.field public static final OEM_RIL_REQUEST_LTE_GET_TOT_ORDER:I = 0x20000c4

.field public static final OEM_RIL_REQUEST_LTE_READ_PROFILE:I = 0x20000c6

.field public static final OEM_RIL_REQUEST_LTE_SET_BSR_TIMER:I = 0x20000bd

.field public static final OEM_RIL_REQUEST_LTE_SET_DEFAULT_PROFILE:I = 0x20000cb

.field public static final OEM_RIL_REQUEST_LTE_SET_LTE_OPTION:I = 0x20000bf

.field public static final OEM_RIL_REQUEST_LTE_UPDATE_PROFILE:I = 0x20000c9

.field public static final OEM_RIL_REQUEST_LTE_UPDATE_TOT_ORDER:I = 0x20000c5

.field public static final OEM_RIL_UNSOL_RESP_LTE_ERROR:I = 0x20001b1

.field public static final OEM_RIL_UNSOL_RESP_VSNCP_ERROR:I = 0x20001b2

.field private static final TAG:Ljava/lang/String; = "OemLteTelephonyManager"

.field private static mInstance:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;

.field private static mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;


# instance fields
.field private mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;

    .line 65
    sput-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->getInstance()Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
    .locals 2

    .prologue
    .line 113
    const-class v1, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;

    .line 115
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;

    .line 118
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private obtainMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->getMsgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->getMsgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearLteAvailableFile(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x2000015

    const/4 v5, 0x0

    .line 681
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "clearLteAvailableFile()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_CLEAR_LTE_AVAILABLE_FILE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v6, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 685
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 686
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2727

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 687
    iput v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 688
    iput v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 689
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 691
    const-string v3, "000000"

    invoke-static {v2, v6, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 694
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 695
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public createLteProfile(ILcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "profile"    # Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;
    .param p3, "spcLockCode"    # Ljava/lang/String;
    .param p4, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c7

    .line 861
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "createLteProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const v2, 0x20000c7

    .line 864
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 865
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2, v5, p3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteCreateProfileRequestToByteArray(ILcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;ILjava/lang/String;)[B

    move-result-object v0

    .line 867
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 868
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public deleteLteProfile(IBLjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "profileId"    # B
    .param p3, "spcLockCode"    # Ljava/lang/String;
    .param p4, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000ca

    .line 912
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "deleteLteProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const v2, 0x20000ca

    .line 915
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 916
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2, v5, p3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteDeleteProfileRequestToByteArray(IBILjava/lang/String;)[B

    move-result-object v0

    .line 918
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 919
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getBandClassSupport(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 447
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getBandClassSupport()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_BANDCLASS_SUPPORT:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 451
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 452
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x35

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 454
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 457
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 458
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getBandPriorityList(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 496
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getBandPriorityList()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_BAND_PRIORITY_LIST:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 500
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 501
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x272a

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 503
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 506
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 507
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getEhrpdOption(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 754
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getEhrpdOption()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_EHRPD_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 758
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 759
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2b

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 761
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 764
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 765
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteActiveEhrpdApns(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c1

    .line 798
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteActiveEhrpdApns()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const v2, 0x20000c1

    .line 801
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 802
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 803
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 804
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteAvailableFile(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 661
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteAvailableFile()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LTE_AVAILABLE_FILE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 665
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 666
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2727

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 668
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 671
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 673
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteBsrTimer(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x20000bc

    .line 706
    const-string v2, "OemLteTelephonyManager"

    const-string v3, "getLteBsrTimer()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-direct {p0, v4}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 709
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 710
    .local v0, "data":[B
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 711
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getLteData(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c0

    .line 739
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const v2, 0x20000c0

    .line 742
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 743
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 744
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 745
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteEnabled(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 977
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLTEEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LTE_ENABLED:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 981
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 982
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2721

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 984
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 987
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 988
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteErrors()[Lcom/motorola/android/telephony/LteError;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyHandler;->getLteErrors()[Lcom/motorola/android/telephony/LteError;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLteForced(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 1021
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLTEForced()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LTE_FORCED:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1025
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1026
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f58

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1028
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1031
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1032
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteOption(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000be

    .line 945
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteOption()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const v2, 0x20000be

    .line 948
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 949
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 950
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 951
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteProfile(IBLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "profileId"    # B
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c6

    .line 844
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const v2, 0x20000c6

    .line 847
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 848
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteReadProfileRequestToByteArray(IBI)[B

    move-result-object v0

    .line 850
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 851
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteProfileIdByLabel(ILjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c8

    .line 878
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteProfileIdByLabel()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const v2, 0x20000c8

    .line 881
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 882
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteGetProfileIdByLabelRequestToByteArray(ILjava/lang/String;I)[B

    move-result-object v0

    .line 884
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 885
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLteTotOrderList(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c4

    .line 813
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getLteTotOrderList()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const v2, 0x20000c4

    .line 816
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 817
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 818
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 819
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMaxBsrTimer(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 591
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getMaxBsrTimer()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LTE_TELESCOPE_MAXBSR_TIME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 596
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 597
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2725

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 599
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 602
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 604
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMaxBsrTimerStages(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 613
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getMaxBsrTimerStages()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LTE_MAXBSR_TIMER_STAGES:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 618
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 619
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2726

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 621
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 624
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 626
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNextLteScan(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 543
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "getNextLteScan()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LTE_LONG_SCAN:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 548
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 549
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2724

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 551
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 554
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 556
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setBandClassSupport(JLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "band"    # J
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    const/4 v7, 0x0

    .line 467
    const-string v4, "OemLteTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBandClassSupport("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_BANDCLASS_SUPPORT:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v8, v4}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 472
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 473
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x35

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 474
    iput v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 475
    iput v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 477
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;

    invoke-direct {v2, p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;-><init>(J)V

    .line 478
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_bc_config_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 480
    const-string v4, "000000"

    invoke-static {v3, v8, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 483
    .local v0, "data":[B
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v4, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 485
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setBandPriorityList([BLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "val"    # [B
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 514
    const-string v4, "OemLteTelephonyManager"

    const-string v5, "setBandPriorityList()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_BAND_PRIORITY_LIST:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v7, v4}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 519
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 520
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x272a

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 521
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 522
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 524
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>()V

    .line 525
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;->data:[B

    .line 526
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 528
    const-string v4, "000000"

    invoke-static {v3, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 531
    .local v0, "data":[B
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v4, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 533
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setEhrpdOption(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 774
    const-string v5, "OemLteTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEhrpdOption - enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_EHRPD_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v8, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 778
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 779
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x2b

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 781
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 782
    .local v4, "val":S
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(S)V

    .line 783
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 785
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 788
    .local v0, "data":[B
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v5, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 789
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 781
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":S
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setLteBsrTimer(ILjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "val"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x20000bd

    .line 720
    const-string v3, "OemLteTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLteBsrTimer("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const v2, 0x20000bd

    .line 723
    .local v2, "msgId":I
    invoke-direct {p0, v6}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 724
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v6, p2}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteBsrTimerToByteArray(IILjava/lang/String;)[B

    move-result-object v0

    .line 726
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 727
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setLteDefaultProfile(IIBLjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "profileFamily"    # I
    .param p3, "profileId"    # B
    .param p4, "spcLockCode"    # Ljava/lang/String;
    .param p5, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000cb

    .line 929
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "setLteDefaultProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const v2, 0x20000cb

    .line 932
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 933
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2, p3, v5, p4}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteSetDefaultProfileRequestToByteArray(IIBILjava/lang/String;)[B

    move-result-object v0

    .line 935
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 936
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setLteEnabled(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 997
    const-string v5, "OemLteTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLteEnabled - enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_LTE_ENABLED:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v8, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1001
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1002
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x2721

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1004
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 1005
    .local v4, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 1006
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1008
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1011
    .local v0, "data":[B
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v5, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1012
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 1004
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":B
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setLteForced(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 1041
    const-string v5, "OemLteTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLteForced - enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_LTE_FORCED:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v8, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1045
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 1046
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f58

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 1048
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 1049
    .local v4, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 1050
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 1052
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 1055
    .local v0, "data":[B
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v5, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 1056
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 1048
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":B
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setLteOption(ZLjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000bf

    .line 960
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "setLteOption()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const v2, 0x20000bf

    .line 963
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 964
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteOptionToByteArray(ZILjava/lang/String;)[B

    move-result-object v0

    .line 966
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 967
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setMaxBsrTimerStages(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 10
    .param p1, "stages"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v9, 0x2000015

    const/4 v8, 0x0

    .line 633
    const-string v5, "OemLteTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMaxBsrTimerStages("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 635
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_LTE_MAXBSR_TIMER_STAGES:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v9, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 639
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 640
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x2726

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 641
    iput v8, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 642
    iput v8, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 644
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 645
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 647
    const-string v5, "000000"

    invoke-static {v3, v9, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 650
    .local v0, "data":[B
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v5, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 652
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setNextLteScan(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 10
    .param p1, "timer"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v9, 0x2000015

    const/4 v8, 0x0

    .line 564
    const-string v5, "OemLteTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNextLteScan("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 566
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_LTE_LONG_SCAN:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-direct {p0, v9, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 570
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 571
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x2724

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 572
    iput v8, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 573
    iput v8, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 575
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 576
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 578
    const-string v5, "000000"

    invoke-static {v3, v9, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 581
    .local v0, "data":[B
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v5, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 583
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public updateLteProfile(IBLcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "profileType"    # I
    .param p2, "profileId"    # B
    .param p3, "profile"    # Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;
    .param p4, "spcLockCode"    # Ljava/lang/String;
    .param p5, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c9

    .line 895
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "updateLteProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const v2, 0x20000c9

    .line 898
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 899
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2, p3, v5, p4}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteUpdateProfileRequestToByteArray(IBLcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;ILjava/lang/String;)[B

    move-result-object v0

    .line 901
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 902
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public updateLteTotOrder([ILjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "list"    # [I
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x20000c5

    .line 828
    const-string v3, "OemLteTelephonyManager"

    const-string v4, "updateLteTotOrder()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const v2, 0x20000c5

    .line 831
    .local v2, "msgId":I
    invoke-direct {p0, v5}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 832
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OemLteDataConverter;->lteTotOrderListToByteArray([IILjava/lang/String;)[B

    move-result-object v0

    .line 834
    .local v0, "data":[B
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;->mCdmaTelMgr:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 835
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method
