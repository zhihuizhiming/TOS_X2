.class public Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.super Ljava/lang/Object;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RESET_TO_FACTORY;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ACTIVE_PROF;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_PrlVersion;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_CP_Status;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_EVDO_Status;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_GENERIC_HookHeader;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HookHeader;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Result;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;,
        Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field private static DBG:Z = false

.field private static final HW_VERSION_LENGTH:I = 0x4

.field private static final HW_VERSION_OFFSET:I = 0xb

.field private static final IMSI_CLASS_0_ADDR_NUM:I = 0xff

.field private static final MIN_MASK_B13_TO_B10:I = 0x3c00

.field private static final MIN_MASK_B23_TO_B14:I = 0xffc000

.field private static final MIN_MASK_B9_TO_B0:I = 0x3ff

.field private static final MIN_SHIFT_B13_TO_B10:I = 0xa

.field private static final MIN_SHIFT_B23_TO_B14:I = 0xe

.field private static final MIN_SHIFT_B9_TO_B0:I = 0x0

.field public static final OEM_RIL_CDMA_SPC_LOCK_CODE_LENGTH:I = 0x6

.field public static final OEM_RIL_REQUEST_CDMA_ACCESS_GENERIC_SIM:I = 0x2050013

.field public static final OEM_RIL_REQUEST_CDMA_CHECK_SUBSIDY_LOCK_PASSWD:I = 0x200000a

.field public static final OEM_RIL_REQUEST_CDMA_FACTORY_RESET:I = 0x20000b6

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_CALL_PROCESSING_DATA:I = 0x2000011

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_EVDO_DATA:I = 0x2000012

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_EVDO_HYBRID_MODE:I = 0x200000d

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_EVDO_REV:I = 0x200000f

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_GET_SERVICE_OPTION:I = 0x200000b

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_SET_EVDO_HYBRID_MODE:I = 0x200000e

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_SET_EVDO_REV:I = 0x2000010

.field public static final OEM_RIL_REQUEST_CDMA_FIELD_TEST_SET_SERVICE_OPTION:I = 0x200000c

.field public static final OEM_RIL_REQUEST_CDMA_GET_BC10:I = 0x20000b0

.field public static final OEM_RIL_REQUEST_CDMA_GET_BC14:I = 0x20000b2

.field public static final OEM_RIL_REQUEST_CDMA_GET_BP_APN:I = 0x2000018

.field public static final OEM_RIL_REQUEST_CDMA_GET_CDMA_PRL_VERSION:I = 0x2000009

.field public static final OEM_RIL_REQUEST_CDMA_GET_DATA_RATE:I = 0x2000005

.field public static final OEM_RIL_REQUEST_CDMA_GET_MOB_P_REV:I = 0x2000007

.field public static final OEM_RIL_REQUEST_CDMA_GET_NAM_INFO:I = 0x2000001

.field public static final OEM_RIL_REQUEST_CDMA_GET_RDE_ITEM:I = 0x2000016

.field public static final OEM_RIL_REQUEST_CDMA_GET_SID_NID_PAIRS:I = 0x2000003

.field public static final OEM_RIL_REQUEST_CDMA_RESET_BP_SILENTLY:I = 0x2050019

.field public static final OEM_RIL_REQUEST_CDMA_SET_ACTIVE_PROF:I = 0x20000b5

.field public static final OEM_RIL_REQUEST_CDMA_SET_AKEY_INFO:I = 0x2000013

.field public static final OEM_RIL_REQUEST_CDMA_SET_BC10:I = 0x20000b1

.field public static final OEM_RIL_REQUEST_CDMA_SET_BC14:I = 0x20000b3

.field public static final OEM_RIL_REQUEST_CDMA_SET_BP_APN:I = 0x2000019

.field public static final OEM_RIL_REQUEST_CDMA_SET_DATA_RATE:I = 0x2000006

.field public static final OEM_RIL_REQUEST_CDMA_SET_MOB_P_REV:I = 0x2000008

.field public static final OEM_RIL_REQUEST_CDMA_SET_NAM_INFO:I = 0x2000002

.field public static final OEM_RIL_REQUEST_CDMA_SET_PRL:I = 0x20000b4

.field public static final OEM_RIL_REQUEST_CDMA_SET_RDE_ITEM:I = 0x2000015

.field public static final OEM_RIL_REQUEST_CDMA_SET_SID_NID_PAIRS:I = 0x2000004

.field public static final OEM_RIL_REQUEST_CDMA_SMSEVDOITEM_UPDATES:I = 0x2000017

.field public static final OEM_RIL_UNSOL_RESP_MIP_ERROR:I = 0x20001b0

.field private static final PROC_CPU_INFO_FILE:Ljava/lang/String; = "/proc/cpuinfo"

.field static final SIZE_OF_BYTE:I = 0x1

.field static final SIZE_OF_CHAR:I = 0x2

.field static final SIZE_OF_INT:I = 0x4

.field static final SIZE_OF_LONG:I = 0x8

.field static final SIZE_OF_NV_ITEM:I = 0x80

.field static final SIZE_OF_SHORT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OemCdmaTelephonyManager"

.field private static mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager; = null

.field private static mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler; = null

.field public static final sDefaultSpcCode:Ljava/lang/String; = "000000"


# instance fields
.field private mCurrentMessage:Landroid/os/Message;

.field private mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

.field private mMsgHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRequestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

.field private mUserHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    .line 259
    sput-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .line 260
    sput-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;

    return-void

    :cond_0
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_IDLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    .line 257
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;

    .line 337
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$1;-><init>(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    .line 416
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 417
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    .line 418
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    .param p1, "x1"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->isSprintProduct()Z

    move-result v0

    return v0
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 7548
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 7549
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 7550
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 7551
    .local v2, "v":I
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 7552
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 7554
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7556
    .end local v2    # "v":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 7560
    and-int/lit16 v0, p0, 0xff

    .line 7561
    .local v0, "v":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 7562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7564
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHWVersion()Ljava/lang/String;
    .locals 14

    .prologue
    .line 4638
    new-instance v6, Ljava/io/File;

    const-string v11, "/proc/cpuinfo"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4639
    .local v6, "procCpuInfoFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 4640
    .local v4, "inputStream":Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .line 4641
    .local v7, "procInfo":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4643
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "getHWVersion()"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4646
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "Proc cpuinfo file does not exist!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4711
    :goto_0
    if-eqz v4, :cond_0

    .line 4712
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 4718
    :cond_0
    :goto_1
    if-nez v9, :cond_8

    const/4 v11, 0x0

    :goto_2
    return-object v11

    .line 4648
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4649
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .local v5, "inputStream":Ljava/io/DataInputStream;
    if-eqz v5, :cond_6

    .line 4650
    const/4 v8, -0x1

    .line 4652
    .local v8, "revisionIndex":I
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 4654
    const-string v11, "Revision\t: "

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 4656
    if-ltz v8, :cond_2

    .line 4658
    const/4 v11, 0x4

    new-array v0, v11, [C

    .line 4660
    .local v0, "buffer":[C
    add-int/lit8 v11, v8, 0xb

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v0, v13}, Ljava/lang/String;->getChars(II[CI)V

    .line 4662
    new-instance v10, Ljava/lang/StringBuffer;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4664
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .local v10, "sb":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    :try_start_4
    aget-char v11, v0, v11

    packed-switch v11, :pswitch_data_0

    .line 4679
    :pswitch_0
    const/4 v11, 0x0

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4682
    :goto_3
    const/4 v11, 0x1

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4683
    const/4 v11, 0x2

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4684
    const/4 v11, 0x3

    aget-char v11, v0, v11

    const/16 v12, 0x30

    if-eq v11, v12, :cond_3

    .line 4686
    const/4 v11, 0x3

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4688
    :cond_3
    sget-boolean v11, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v11, :cond_9

    const-string v11, "OemCdmaTelephonyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getHWVersion() sb: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v9, v10

    .line 4692
    .end local v0    # "buffer":[C
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    :goto_4
    const/4 v11, -0x1

    if-ne v8, v11, :cond_5

    .line 4694
    :try_start_5
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "HW revision data not found in file."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    move-object v4, v5

    .line 4696
    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 4667
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[C
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :pswitch_1
    const/16 v11, 0x53

    :try_start_6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 4700
    :catch_0
    move-exception v3

    move-object v9, v10

    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    move-object v4, v5

    .line 4701
    .end local v0    # "buffer":[C
    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .end local v8    # "revisionIndex":I
    .local v3, "fnd":Ljava/io/FileNotFoundException;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    :goto_5
    :try_start_7
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "Got FileNotFoundException in getHWVersion()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4711
    if-eqz v4, :cond_0

    .line 4712
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 4714
    :catch_1
    move-exception v1

    .line 4715
    .end local v3    # "fnd":Ljava/io/FileNotFoundException;
    .local v1, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 4670
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[C
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v8    # "revisionIndex":I
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :pswitch_2
    const/16 v11, 0x4d

    :try_start_9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    .line 4702
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    move-object v4, v5

    .line 4703
    .end local v0    # "buffer":[C
    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .end local v8    # "revisionIndex":I
    .local v2, "eof":Ljava/io/EOFException;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    :goto_7
    :try_start_a
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "Got EOFException in getHWVersion()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4711
    if-eqz v4, :cond_0

    .line 4712
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    .line 4714
    :catch_3
    move-exception v1

    goto :goto_6

    .line 4673
    .end local v2    # "eof":Ljava/io/EOFException;
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[C
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v8    # "revisionIndex":I
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :pswitch_3
    const/16 v11, 0x50

    :try_start_c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    .line 4704
    :catch_4
    move-exception v1

    move-object v9, v10

    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    move-object v4, v5

    .line 4705
    .end local v0    # "buffer":[C
    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .end local v8    # "revisionIndex":I
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    :goto_8
    :try_start_d
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "Got IOException in getHWVersion()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4706
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 4711
    if-eqz v4, :cond_0

    .line 4712
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    .line 4714
    :catch_5
    move-exception v1

    goto :goto_6

    .line 4676
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[C
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v8    # "revisionIndex":I
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :pswitch_4
    const/16 v11, 0x44

    :try_start_f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_3

    .line 4707
    :catch_6
    move-exception v1

    move-object v9, v10

    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    move-object v4, v5

    .line 4708
    .end local v0    # "buffer":[C
    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .end local v8    # "revisionIndex":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    :goto_9
    :try_start_10
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "Got exception in getHWVersion()"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 4711
    if-eqz v4, :cond_0

    .line 4712
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_1

    .line 4714
    :catch_7
    move-exception v1

    goto :goto_6

    .line 4697
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    :cond_6
    :try_start_12
    const-string v11, "OemCdmaTelephonyManager"

    const-string v12, "Fail to read from the procCpuInfoFile."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 4710
    :catchall_0
    move-exception v11

    .line 4711
    :goto_a
    if-eqz v4, :cond_7

    .line 4712
    :try_start_13
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 4710
    :cond_7
    :goto_b
    throw v11

    .line 4718
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 4714
    :catch_8
    move-exception v1

    .line 4715
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 4714
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    goto :goto_6

    .line 4710
    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_a

    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[C
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v8    # "revisionIndex":I
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :catchall_2
    move-exception v11

    move-object v9, v10

    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_a

    .line 4707
    .end local v0    # "buffer":[C
    .end local v8    # "revisionIndex":I
    :catch_a
    move-exception v1

    goto :goto_9

    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    :catch_b
    move-exception v1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_9

    .line 4704
    :catch_c
    move-exception v1

    goto :goto_8

    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    :catch_d
    move-exception v1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_8

    .line 4702
    :catch_e
    move-exception v2

    goto :goto_7

    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    :catch_f
    move-exception v2

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_7

    .line 4700
    :catch_10
    move-exception v3

    goto/16 :goto_5

    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    :catch_11
    move-exception v3

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_5

    .end local v4    # "inputStream":Ljava/io/DataInputStream;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":[C
    .restart local v5    # "inputStream":Ljava/io/DataInputStream;
    .restart local v8    # "revisionIndex":I
    .restart local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    move-object v9, v10

    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    goto/16 :goto_4

    .line 4664
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    .locals 2

    .prologue
    .line 422
    const-class v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;

    .line 424
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRawHookHandler:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyHandler;

    .line 427
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mInstance:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSprintProduct()Z
    .locals 3

    .prologue
    .line 7569
    const-string v1, "ro.mot.build.customerid"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7570
    .local v0, "customerid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7571
    const-string v1, "ro.product.brand"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7573
    :cond_0
    const-string v1, "Sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public GetDecodeImsi1112(B)Ljava/lang/String;
    .locals 8
    .param p1, "imsi_11_12"    # B

    .prologue
    .line 4378
    const/4 v4, 0x0

    .line 4379
    .local v4, "temp":B
    const/4 v2, 0x0

    .line 4380
    .local v2, "index":I
    const/4 v5, 0x2

    new-array v0, v5, [B

    .line 4384
    .local v0, "buffer":[B
    move v4, p1

    .line 4386
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    div-int/lit8 v5, v4, 0xa

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 4387
    rem-int/lit8 v5, v4, 0xa

    int-to-byte v4, v5

    .line 4388
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aput-byte v4, v0, v3

    .line 4398
    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 4400
    aget-byte v5, v0, v2

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 4402
    const/16 v5, 0x30

    aput-byte v5, v0, v2

    .line 4398
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4406
    :cond_0
    aget-byte v5, v0, v2

    add-int/lit8 v5, v5, 0x31

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    goto :goto_1

    .line 4410
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 4411
    .local v1, "imsi1112":Ljava/lang/String;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetDecodeImsi1112() imsi1112="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    :cond_2
    return-object v1
.end method

.method public GetDecodeImsiMcc(S)Ljava/lang/String;
    .locals 8
    .param p1, "imsi_mcc"    # S

    .prologue
    .line 4495
    const/4 v1, 0x0

    .line 4496
    .local v1, "index":I
    const/4 v5, 0x3

    new-array v0, v5, [B

    .line 4500
    .local v0, "buffer":[B
    move v4, p1

    .line 4502
    .local v4, "temp":S
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    div-int/lit8 v5, v4, 0x64

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 4503
    rem-int/lit8 v5, v4, 0x64

    int-to-short v4, v5

    .line 4504
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    div-int/lit8 v5, v4, 0xa

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 4505
    rem-int/lit8 v5, v4, 0xa

    int-to-short v4, v5

    .line 4506
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    int-to-byte v5, v4

    aput-byte v5, v0, v1

    .line 4516
    const/4 v1, 0x0

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 4518
    aget-byte v5, v0, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 4520
    const/16 v5, 0x30

    aput-byte v5, v0, v1

    .line 4516
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4524
    :cond_0
    aget-byte v5, v0, v1

    add-int/lit8 v5, v5, 0x31

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    goto :goto_1

    .line 4528
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 4529
    .local v3, "mcc":Ljava/lang/String;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetDecodeImsi1112() mcc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    :cond_2
    return-object v3
.end method

.method public GetDecodeMin(JI)Ljava/lang/String;
    .locals 10
    .param p1, "min1"    # J
    .param p3, "min2"    # I

    .prologue
    .line 4149
    const/4 v1, 0x0

    .line 4151
    .local v1, "index":I
    const/16 v7, 0xa

    new-array v0, v7, [B

    .line 4154
    .local v0, "buffer":[B
    int-to-long v5, p3

    .line 4156
    .local v5, "temp":J
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    const-wide/16 v7, 0x64

    div-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 4157
    const-wide/16 v7, 0x64

    rem-long/2addr v5, v7

    .line 4158
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    const-wide/16 v7, 0xa

    div-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 4159
    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    .line 4160
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    long-to-int v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 4163
    move-wide v5, p1

    .line 4164
    const-wide/32 v7, 0xffc000

    and-long/2addr v5, v7

    .line 4165
    const/16 v7, 0xe

    shr-long/2addr v5, v7

    .line 4167
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    const-wide/16 v7, 0x64

    div-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 4168
    const-wide/16 v7, 0x64

    rem-long/2addr v5, v7

    .line 4169
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v7, 0xa

    div-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 4170
    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    .line 4171
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    long-to-int v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 4173
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    move v4, v1

    .line 4176
    .local v4, "save_index":I
    move-wide v5, p1

    .line 4177
    const-wide/16 v7, 0x3ff

    and-long/2addr v5, v7

    .line 4178
    const/4 v7, 0x0

    shr-long/2addr v5, v7

    .line 4180
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    const-wide/16 v7, 0x64

    div-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 4181
    const-wide/16 v7, 0x64

    rem-long/2addr v5, v7

    .line 4182
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v7, 0xa

    div-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    .line 4183
    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    .line 4184
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    long-to-int v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 4196
    const/4 v1, 0x0

    :goto_0
    array-length v7, v0

    if-ge v1, v7, :cond_1

    .line 4197
    aget-byte v7, v0, v1

    const/16 v8, 0x9

    if-ne v7, v8, :cond_0

    .line 4198
    const/16 v7, 0x30

    aput-byte v7, v0, v1

    .line 4196
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4200
    :cond_0
    aget-byte v7, v0, v1

    add-int/lit8 v7, v7, 0x31

    int-to-byte v7, v7

    aput-byte v7, v0, v1

    goto :goto_1

    .line 4208
    :cond_1
    move-wide v5, p1

    .line 4209
    const-wide/16 v7, 0x3c00

    and-long/2addr v5, v7

    .line 4210
    const/16 v7, 0xa

    shr-long/2addr v5, v7

    .line 4211
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 4213
    const-wide/16 v5, 0x0

    .line 4215
    :cond_2
    long-to-int v7, v5

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 4216
    aget-byte v7, v0, v4

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    .line 4218
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 4219
    .local v3, "min":Ljava/lang/String;
    sget-boolean v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v7, :cond_3

    .line 4220
    const-string v7, "OemCdmaTelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GetDecodeMin() min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    :cond_3
    return-object v3
.end method

.method public GetEncodeImsi1112(Ljava/lang/String;)B
    .locals 7
    .param p1, "imsi_11_12"    # Ljava/lang/String;

    .prologue
    .line 4416
    const/4 v3, 0x0

    .line 4418
    .local v3, "temp":B
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 4420
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4429
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 4431
    aget-byte v4, v0, v1

    const/16 v5, 0x30

    if-ne v4, v5, :cond_0

    .line 4433
    const/16 v4, 0x9

    aput-byte v4, v0, v1

    .line 4429
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4437
    :cond_0
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_1

    .line 4442
    :cond_1
    const/4 v1, 0x0

    .line 4445
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v4, v0, v1

    mul-int/lit8 v4, v4, 0xa

    int-to-byte v3, v4

    .line 4446
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, v0, v2

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 4447
    sget-boolean v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetEncodeImsiMcc()  imsi1112="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    :cond_2
    return v3
.end method

.method public GetEncodeImsiMcc(Ljava/lang/String;)S
    .locals 7
    .param p1, "imsi_mcc"    # Ljava/lang/String;

    .prologue
    .line 4536
    const/4 v4, 0x3

    new-array v0, v4, [B

    .line 4538
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4547
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 4549
    aget-byte v4, v0, v1

    const/16 v5, 0x30

    if-ne v4, v5, :cond_0

    .line 4551
    const/16 v4, 0x9

    aput-byte v4, v0, v1

    .line 4547
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4555
    :cond_0
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_1

    .line 4560
    :cond_1
    const/4 v1, 0x0

    .line 4563
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v4, v0, v1

    mul-int/lit8 v4, v4, 0x64

    int-to-short v3, v4

    .line 4564
    .local v3, "temp":S
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, v0, v2

    mul-int/lit8 v4, v4, 0xa

    int-to-short v4, v4

    add-int/2addr v4, v3

    int-to-short v3, v4

    .line 4565
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, v0, v1

    int-to-short v4, v4

    add-int/2addr v4, v3

    int-to-short v3, v4

    .line 4566
    sget-boolean v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetEncodeImsiMcc()  mcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    :cond_2
    return v3
.end method

.method public GetEncodeMin1(Ljava/lang/String;)I
    .locals 8
    .param p1, "min"    # Ljava/lang/String;

    .prologue
    .line 4227
    const/16 v5, 0xa

    new-array v0, v5, [B

    .line 4229
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4231
    const/4 v5, 0x6

    aget-byte v5, v0, v5

    add-int/lit8 v4, v5, -0x30

    .line 4232
    .local v4, "temp":I
    if-nez v4, :cond_0

    .line 4234
    const/16 v4, 0xa

    .line 4236
    :cond_0
    shl-int/lit8 v4, v4, 0xa

    .line 4237
    move v3, v4

    .line 4249
    .local v3, "min1":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 4250
    aget-byte v5, v0, v1

    const/16 v6, 0x30

    if-ne v5, v6, :cond_1

    .line 4251
    const/16 v5, 0x9

    aput-byte v5, v0, v1

    .line 4249
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4253
    :cond_1
    aget-byte v5, v0, v1

    add-int/lit8 v5, v5, -0x31

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    goto :goto_1

    .line 4258
    :cond_2
    const/4 v1, 0x0

    .line 4261
    add-int/lit8 v1, v1, 0x3

    .line 4264
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    aget-byte v5, v0, v1

    mul-int/lit8 v4, v5, 0x64

    .line 4265
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aget-byte v5, v0, v2

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    .line 4266
    aget-byte v5, v0, v1

    add-int/2addr v4, v5

    .line 4269
    add-int/lit8 v1, v1, 0x2

    .line 4272
    shl-int/lit8 v4, v4, 0xe

    .line 4273
    or-int/2addr v3, v4

    .line 4276
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aget-byte v5, v0, v1

    mul-int/lit8 v4, v5, 0x64

    .line 4277
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aget-byte v5, v0, v2

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    .line 4278
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aget-byte v5, v0, v1

    add-int/2addr v4, v5

    .line 4279
    or-int/2addr v3, v4

    .line 4280
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4281
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetEncodeMin1() string min1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    :cond_3
    return v3
.end method

.method public GetEncodeMin2(Ljava/lang/String;)S
    .locals 7
    .param p1, "min"    # Ljava/lang/String;

    .prologue
    .line 4290
    const/16 v5, 0xa

    new-array v0, v5, [B

    .line 4292
    .local v0, "buffer":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4294
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 4296
    aget-byte v5, v0, v1

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 4298
    const/16 v5, 0x9

    aput-byte v5, v0, v1

    .line 4294
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4302
    :cond_0
    aget-byte v5, v0, v1

    add-int/lit8 v5, v5, -0x31

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    goto :goto_1

    .line 4307
    :cond_1
    const/4 v1, 0x0

    .line 4310
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    aget-byte v5, v0, v1

    mul-int/lit8 v5, v5, 0x64

    int-to-short v4, v5

    .line 4311
    .local v4, "temp":S
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    aget-byte v5, v0, v2

    mul-int/lit8 v5, v5, 0xa

    int-to-short v5, v5

    add-int/2addr v5, v4

    int-to-short v4, v5

    .line 4312
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    aget-byte v5, v0, v1

    int-to-short v5, v5

    add-int/2addr v5, v4

    int-to-short v4, v5

    .line 4313
    move v3, v4

    .line 4315
    .local v3, "min2":S
    return v3
.end method

.method public accessGenericSIM(I[BLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 4
    .param p1, "len"    # I
    .param p2, "command"    # [B
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    .line 2856
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "accessGenericSIM()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    const v3, 0x2050013

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2861
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->genericSIMToByteArr(I[B)[B

    move-result-object v0

    .line 2862
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2864
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public checkSubsidyLockPasswd(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 4
    .param p1, "password"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    .line 2814
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "checkSubsidyLockPasswd()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    const v3, 0x200000a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2819
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->subsidyPasswdToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SubsidyPassword;)[B

    move-result-object v0

    .line 2820
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2822
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public factoryReset(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 1
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    .line 3898
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->factoryReset(Landroid/os/Handler;B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-result-object v0

    return-object v0
.end method

.method public factoryReset(Landroid/os/Handler;B)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "msgH"    # Landroid/os/Handler;
    .param p2, "resetType"    # B

    .prologue
    const v6, 0x20000b6

    .line 3903
    const-string v3, "OemCdmaTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "factoryReset type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3906
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x13

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3907
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3909
    const/4 v3, 0x1

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    invoke-static {v0, v6, v3, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;)V

    .line 3911
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3912
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 3914
    .local v1, "data":[B
    invoke-virtual {p0, v1, v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3915
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public get1xAdvancedOption(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4868
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "get1xAdvancedOption"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_1xADV_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4872
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4873
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271f

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4875
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4878
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4879
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getBC10(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x20000b0

    .line 3949
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getBC10()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3954
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 3956
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3958
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getBC14(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x20000b2

    .line 3990
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getBC14()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3995
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 3997
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3999
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getCallProcessingData(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000011

    .line 2405
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getCallProcessingData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2410
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2412
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2414
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getCdmaStatusInfo(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 2
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    .line 2621
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "setCdmaStatusInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v0
.end method

.method public getEmergencyNumber(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "address"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2832
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2836
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2837
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v3, 0x6

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2838
    invoke-virtual {p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;->id()I

    move-result v3

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 2839
    const/4 v3, 0x0

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 2841
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2844
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2846
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getEsn(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2500
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getEsn()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_ESN:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2505
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2506
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0xa

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2508
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2511
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2513
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getEvdoData(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000012

    .line 2387
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getEvdoData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2392
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2394
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2396
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getEvdoRev(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x200000f

    .line 2369
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getEvdoRev()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2374
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2376
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2378
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getForNIDReg(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4772
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getForNIDReg()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_FOR_NID_REG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4777
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4778
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x34

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4780
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4784
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4785
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getForSIDReg(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4750
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getForSIDReg()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_FOR_SID_REG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4755
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4756
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x33

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4757
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4761
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4762
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getHdrAnAuthPasswdLong(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3872
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getHdrAnAuthPasswdLong()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_HDR_AN_AUTH_PASSWD_LONG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3877
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3878
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v3, 0x4

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3880
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3883
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3885
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getHomeSIDReg(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4728
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getHomeSIDReg()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_HOME_SID_REG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4733
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4734
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x32

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4736
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4740
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4741
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getHybridModeState(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x200000d

    .line 2330
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getHybridModeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2335
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2337
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2339
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getIMSIAddrNum(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 5072
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getIMSIAddrNum()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_IMSI_M_ADDR_NUM:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5077
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 5078
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x31

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 5080
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5084
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5085
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getLockCode(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4794
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getLockCode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_LOCK_CODE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4799
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4800
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x17

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4802
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4806
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4807
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipAaaKey(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3664
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipAaaKey()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_AAA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3669
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3670
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2719

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3672
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3675
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3677
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipErrorCode(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2634
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipErrorCode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_ERROR_CODE_I:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2639
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2640
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2723

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2642
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2646
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2647
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipGenProfile(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "index"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3708
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipGenProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_GEN_USER_PROF:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3713
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3714
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x9

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3715
    iput p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 3717
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3720
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3722
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipHaKey(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3642
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipHaKey()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_HA_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3647
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3648
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2718

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3650
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3653
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3655
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipSipChapKey(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3686
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipSipChapKey()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3687
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_SIP_CHAP_KEY:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3691
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3692
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271a

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3694
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3697
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3699
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMipSsProfile(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "index"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3761
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getMipSsProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_MIP_SS_USER_PROF:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3766
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3767
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2e

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3768
    iput p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 3770
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3773
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3775
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getMobilePRev(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000007

    .line 2795
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getMobilePRev()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2800
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2802
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2804
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method getMsgHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNamAccolc(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4572
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamImsiAccolc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_ACCOLC:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4577
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4578
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v3, 0x2

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4580
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4583
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4585
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamDataRate(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000005

    .line 2444
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamDataRate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2449
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2451
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2453
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamImsi1112(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4337
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamImsi1122()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_IMSI_11_12:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4342
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4343
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x10

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4345
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4348
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4350
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamImsiMcc(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4453
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamImsiMcc()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_IMSI_MCC:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4458
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4459
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x11

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4461
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4464
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4466
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamInfo(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000001

    .line 2756
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2761
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2763
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2765
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamMdn(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4028
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamMdn()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_MDN:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4033
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4034
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v3, 0x7

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4036
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4039
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4041
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamMin1(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4068
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamMin1()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_MIN1:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4073
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4074
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x19

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4076
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4079
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4081
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamMin2(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4108
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamMin2()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_MIN2:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4113
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4114
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1a

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4116
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4119
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4121
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamPrlVersion(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000009

    .line 2462
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamPrlVersion()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2467
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2469
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2471
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getNamScm(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4319
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getNamScm()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_NAM_SCM:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4325
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4326
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x24

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4328
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4331
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4333
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getNamSidNidPairs(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x2000003

    .line 2706
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getNamSidNidPairs()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2710
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;

    .line 2712
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2714
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2716
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getOtksl(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2479
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getOtksl()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_OTKSL:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2484
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2485
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1b

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2487
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2490
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2492
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getPrefOnlyFlag(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2980
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PREF_ONLY_FLAG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2984
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2985
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271d

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2987
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2990
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2992
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getPrefVoiceSo(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2521
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getPrefVoiceSo()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PREF_VOICE_SO:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2526
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2527
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1e

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2529
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2532
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2534
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getPublicUserDomainName(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3590
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getPublicUserDomainName"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3595
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3596
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f4c

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3598
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3601
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3603
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getRDEByID(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "rde_id"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3269
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getRDEByID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3273
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3274
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3284
    const/4 v3, 0x0

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3288
    :goto_0
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3291
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3293
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3

    .line 3276
    .end local v0    # "data":[B
    :pswitch_0
    const/16 v3, 0x26

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 3280
    :pswitch_1
    const/16 v3, 0x27

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 3274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSO68Enabled(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3817
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSO68Enabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_SO68_ENABLED:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3822
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3823
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x30

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3825
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3828
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3830
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getServiceOption(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 5
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v4, 0x200000b

    .line 2289
    const-string v2, "OemCdmaTelephonyManager"

    const-string v3, "getServiceOption()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2294
    .local v1, "msg":Landroid/os/Message;
    invoke-static {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v0

    .line 2296
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2298
    sget-object v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v2
.end method

.method public getSlotCycleIndex(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2568
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSlotCycleIndex()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SLOT_CYCLE_INDEX:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2573
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2574
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2f

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2576
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2580
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2581
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSlotCycleMode(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 2590
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSlotCycleMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SLOT_CYCLE_MODE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2595
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2596
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x24

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2597
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2601
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2602
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoDomainName(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3490
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoDomainName"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3495
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3496
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f4a

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3498
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3501
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3503
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoPortNumber(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3540
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoPortNumber"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3545
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3546
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f4b

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3548
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3551
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3553
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoReleaseTimer(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3440
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoReleaseTimer"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3445
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3446
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f49

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3448
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3451
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3453
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoStatus(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3339
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3344
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3345
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f47

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3347
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3350
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3352
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSmsEvdoT1Timer(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3390
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSmsEvdoT1Timer"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3395
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3396
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f48

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3398
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3401
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3403
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSo73Cop0Option(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4961
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSo73Cop0Option"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SO73COP0_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4965
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4966
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2720

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4968
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4971
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4972
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSo73Option(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 4914
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSo73Option"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4916
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SO73_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4918
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4919
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x2d

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4921
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4924
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4925
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getSprintSimLock(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 5123
    sget-boolean v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "getSprintSimlock()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    :cond_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_SIM_LOCK:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5127
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 5128
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x1f5b

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 5130
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5133
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5134
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public getVZWSystemSelection(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000016

    .line 3001
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_GET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3005
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3006
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v3, 0x271e

    iput v3, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3008
    const-string v3, "000000"

    invoke-static {v2, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3011
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3013
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method declared-synchronized invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw(): msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$TelephonyMgrState:[I

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 405
    const-string v0, "OemCdmaTelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong state in invokeOemRilRequestRaw(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :goto_0
    monitor-exit p0

    return-void

    .line 393
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;->STATE_WAITING_FOR_RESPONSE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mState:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$TelephonyMgrState;

    .line 394
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mCurrentMessage:Landroid/os/Message;

    .line 395
    iput-object p3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mUserHandler:Landroid/os/Handler;

    .line 396
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "sending request to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 398
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mDog:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;

    invoke-virtual {v0, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$Watchdog;->watch(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :pswitch_1
    :try_start_2
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "OemCdmaTelephonyManager is busy. pushing request to the queue."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mRequestList:Ljava/util/LinkedList;

    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;

    invoke-direct {v1, p1, p2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$HookRequest;-><init>([BLandroid/os/Message;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public operateVZWAPNMRUTable(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;Ljava/lang/String;Landroid/os/Message;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "operation"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2878
    sget-boolean v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OperateVZWAPNMRUTable(): Operation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Payload = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2883
    .local v2, "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$VZW_APN_MRU_Operation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2905
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2924
    :goto_0
    return-object v4

    .line 2885
    :pswitch_0
    const-string v4, "CDMAEDITAPN "

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    const-string v4, "AT+APNE="

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2908
    :goto_1
    if-eqz p2, :cond_1

    .line 2909
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2912
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2913
    .local v0, "array_size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 2914
    .local v1, "command":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2916
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "invokeOemRilRequestStrings(): "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 2919
    sget-boolean v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "OemCdmaTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2889
    .end local v0    # "array_size":I
    .end local v1    # "command":[Ljava/lang/String;
    .end local v3    # "i":I
    :pswitch_1
    const-string v4, "CDMAQAPNEFS "

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2890
    const-string v4, "AT+APNE?"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2893
    :pswitch_2
    const-string v4, "CDMAEDITMRU "

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2894
    const-string v4, "AT+MRUE="

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2897
    :pswitch_3
    const-string v4, "CDMAQUERYMRU"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2898
    const-string v4, "AT+MRUE?"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2901
    :pswitch_4
    const-string v4, "CDMACLEARMRU"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
    const-string v4, "AT+MRUC"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2922
    .restart local v0    # "array_size":I
    .restart local v1    # "command":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v1, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2924
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto/16 :goto_0

    .line 2883
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

.method public resetBPSilently(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2050019

    .line 4620
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "resetBPSilently()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4625
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4627
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    invoke-static {v0, v5, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->writeGenericHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 4631
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 4632
    .local v1, "data":[B
    invoke-virtual {p0, v1, v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4633
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public set1xAdvancedOption(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 4843
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set1xAdvancedOption - enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_1xADV_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4847
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4848
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x271f

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4850
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 4851
    .local v4, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 4852
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4854
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4857
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4858
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 4850
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":B
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setAkeyInfo(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "info"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000013

    .line 2659
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setAkeyInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;->akey:[B

    array-length v3, v3

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_0

    .line 2662
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2671
    :goto_0
    return-object v3

    .line 2664
    :cond_0
    const v2, 0x2000013

    .line 2665
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2667
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->aKeyInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_AKey_Info;ILjava/lang/String;)[B

    move-result-object v0

    .line 2669
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2671
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setBC10(ILjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "status"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x20000b1

    .line 3970
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setBC10()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    const v3, 0x20000b1

    .line 3973
    .local v3, "msgId":I
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3974
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;-><init>()V

    .line 3975
    .local v0, "bc":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;
    iput p1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    .line 3977
    invoke-static {v0, v6, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->BCToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;ILjava/lang/String;)[B

    move-result-object v1

    .line 3979
    .local v1, "data":[B
    invoke-virtual {p0, v1, v2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3981
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setBC14(ILjava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "status"    # I
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x20000b3

    .line 4011
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setBC14()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    const v3, 0x20000b3

    .line 4014
    .local v3, "msgId":I
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4015
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;

    invoke-direct {v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;-><init>()V

    .line 4016
    .local v0, "bc":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;
    iput p1, v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;->status:I

    .line 4018
    invoke-static {v0, v6, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->BCToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_BC;ILjava/lang/String;)[B

    move-result-object v1

    .line 4020
    .local v1, "data":[B
    invoke-virtual {p0, v1, v2, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4022
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setDdtmSettings(Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 2
    .param p1, "msgH"    # Landroid/os/Handler;

    .prologue
    .line 2610
    const-string v0, "OemCdmaTelephonyManager"

    const-string v1, "setDdtmSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v0
.end method

.method public setEmergencyNumber(Ljava/lang/String;Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "addr"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;
    .param p3, "spcLockCode"    # Ljava/lang/String;
    .param p4, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    const/4 v7, 0x0

    .line 2936
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2938
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    if-nez p2, :cond_0

    .line 2939
    const-string v5, "OemCdmaTelephonyManager"

    const-string v6, "setEmergencyNumber(): addr is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-object v5, v4

    .line 2969
    :goto_0
    return-object v5

    .line 2944
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_EMERGENCY_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2948
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2949
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v5, 0x6

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2950
    iput v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 2951
    iput v7, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 2953
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;-><init>()V

    .line 2954
    .local v2, "n":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;
    invoke-virtual {p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$EmergencyAddress;->id()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->address:B

    .line 2955
    const/4 v5, 0x3

    iput-byte v5, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->status:B

    .line 2957
    invoke-virtual {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_dial_type;->setNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2958
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEmergencyNumber(): unable to set number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    move-object v5, v4

    .line 2960
    goto :goto_0

    .line 2963
    :cond_1
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 2965
    invoke-static {v3, v8, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2967
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2969
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setEvdoRev(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "evdoRev"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000010

    .line 2351
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setEvdoRev()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const v2, 0x2000010

    .line 2354
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2356
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->revOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_RevOption;ILjava/lang/String;)[B

    move-result-object v0

    .line 2358
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2360
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setForNIDReg(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "enabled"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 5043
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setForNIDReg()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_FOR_NID_REG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5048
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 5049
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x34

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 5050
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 5051
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 5052
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;-><init>()V

    .line 5053
    .local v1, "mob_term_nid":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;->enabled:[B

    int-to-byte v5, p1

    aput-byte v5, v4, v6

    .line 5054
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;->enabled:[B

    const/4 v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 5055
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 5057
    const-string v4, "000000"

    invoke-static {v3, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5061
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5062
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setForSIDReg(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "enabled"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 5013
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setForSIDReg()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_FOR_SID_REG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5018
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 5019
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x33

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 5020
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 5021
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 5022
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;-><init>()V

    .line 5023
    .local v1, "mob_term_sid":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;->enabled:[B

    int-to-byte v5, p1

    aput-byte v5, v4, v6

    .line 5024
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;->enabled:[B

    const/4 v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 5025
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 5027
    const-string v4, "000000"

    invoke-static {v3, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5031
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5032
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setHomeSIDReg(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "enabled"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4983
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setHomeSIDReg()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4984
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_HOME_SID_REG:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4988
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4989
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x32

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4990
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4991
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4992
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;-><init>()V

    .line 4993
    .local v1, "mob_term_home":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;->enabled:[B

    int-to-byte v5, p1

    aput-byte v5, v4, v6

    .line 4994
    iget-object v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_mob_term_type;->enabled:[B

    const/4 v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 4995
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4997
    const-string v4, "000000"

    invoke-static {v3, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5001
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5002
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setHybridModeState(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "hybridModeState"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x200000e

    .line 2312
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setHybridModeState()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const v2, 0x200000e

    .line 2315
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2317
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->hybridModeToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_HybridModeState;ILjava/lang/String;)[B

    move-result-object v0

    .line 2319
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2321
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setIMSIAddrNum(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "number"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 5094
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setIMSIAddrNum()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_IMSI_M_ADDR_NUM:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5099
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 5100
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x31

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 5101
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 5102
    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 5103
    new-instance v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;

    invoke-direct {v1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;-><init>()V

    .line 5105
    .local v1, "imsiMAddrNum":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;
    int-to-byte v4, p1

    iput-byte v4, v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_imsi_addr_num_type;->num:B

    .line 5106
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 5108
    const-string v4, "000000"

    invoke-static {v3, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5112
    .local v0, "data":[B
    invoke-virtual {p0, v0, v2, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5113
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setIntRDEByID(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "rde_id"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;
    .param p2, "value"    # I
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3302
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3303
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setIntRDEByID - value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3308
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3309
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$2;->$SwitchMap$com$motorola$android$telephony$cdma$OemCdmaTelephonyManager$RdeRequestId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 3319
    const/4 v5, 0x0

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3323
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 3324
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3326
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3329
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3331
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 3311
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    :pswitch_0
    const/16 v5, 0x26

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 3315
    :pswitch_1
    const/16 v5, 0x27

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    goto :goto_0

    .line 3309
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLockCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x2000015

    .line 4816
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setLockCode()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_LOCK_CODE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4821
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4822
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x17

    iput v4, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4824
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 4825
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4827
    const-string v4, "000000"

    invoke-static {v3, v6, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4831
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4832
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setMipGenProfile(ILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "index"    # I
    .param p2, "profile"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_gen_profile_type;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x2000015

    .line 3734
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setMipGenProfile()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3736
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_MIP_GEN_USER_PROF:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3740
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3741
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x9

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3742
    iput p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 3743
    const/4 v4, 0x0

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 3744
    iput-object p2, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3746
    const-string v4, "000000"

    invoke-static {v2, v6, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3749
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3751
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setMipSsProfile(ILcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "index"    # I
    .param p2, "profile"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_ss_profile_type;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x2000015

    .line 3787
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setMipSsProfile()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3791
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_MIP_SS_USER_PROF:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3795
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3796
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x2e

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3797
    iput p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 3798
    const/4 v4, 0x0

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 3800
    iput-object p2, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3802
    const-string v4, "000000"

    invoke-static {v2, v6, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3805
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3807
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setMobilePRev(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "rev"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000008

    .line 2777
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setMobilePRev()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    const v2, 0x2000008

    .line 2780
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2782
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->mobilePRevToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_MobilePRev;ILjava/lang/String;)[B

    move-result-object v0

    .line 2784
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2786
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setNamAccolc(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "nvAccolc"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_accolc_type;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4590
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setNamAccolc()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 4593
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_NAM_ACCOLC:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4597
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4598
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v4, 0x2

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4599
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4600
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4601
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4603
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4607
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4609
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setNamDataRate(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "dataRate"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000006

    .line 2426
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setNamDataRate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const v2, 0x2000006

    .line 2429
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2431
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->dataRateToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_DataRate;ILjava/lang/String;)[B

    move-result-object v0

    .line 2433
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2435
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setNamImsi1112(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_11_12_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "nvMnc"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_11_12_type;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4355
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setNamImsi1112()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 4358
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_NAM_IMSI_11_12:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4362
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4363
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x10

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4364
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4365
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4366
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4368
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4372
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4374
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setNamImsiMcc(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "nvMcc"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_imsi_mcc_type;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4471
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setNamImsiMcc()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 4474
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_NAM_IMSI_MCC:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4478
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4479
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x11

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4480
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4481
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4482
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4484
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4488
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4490
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setNamInfo(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "namInfo"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000002

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 2728
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setNamInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->mdn:[B

    array-length v3, v3

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->min:[B

    array-length v3, v3

    if-ne v3, v6, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsi11_12:[B

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMcc:[B

    array-length v3, v3

    if-ne v3, v5, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiMccT:[B

    array-length v3, v3

    if-ne v3, v5, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->imsiT:[B

    array-length v3, v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;->newSpcCode:[B

    array-length v3, v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 2737
    :cond_0
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2747
    :goto_0
    return-object v3

    .line 2740
    :cond_1
    const v2, 0x2000002

    .line 2741
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2743
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v7, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->namInfoToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_Info;ILjava/lang/String;)[B

    move-result-object v0

    .line 2745
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2747
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setNamMdn(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "nvMdn"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_mdn_type;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4045
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setNamMdn()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 4048
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_NAM_MDN:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4052
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4053
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/4 v4, 0x7

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4054
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4055
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4056
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4058
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4062
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4064
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setNamMin1(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "nvMin1"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min1_type;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4085
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setNamMin1()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 4088
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_NAM_MIN1:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4092
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4093
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x19

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4094
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4095
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4096
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4098
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4102
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4104
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setNamMin2(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min2_type;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "nvMin2"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_nam_min2_type;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 4125
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setNamMin2()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 4128
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_NAM_MIN2:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4132
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4133
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x1a

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4134
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 4135
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 4136
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4138
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4142
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4144
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setNamSidNidPairs(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "sidNidPairs"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x2000004

    .line 2684
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setNamSidNidPairs()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    iget-object v3, p1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;->sidNid:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_SID_NID_NAM_Pair;

    array-length v3, v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_0

    .line 2687
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2697
    :goto_0
    return-object v3

    .line 2690
    :cond_0
    const v2, 0x2000004

    .line 2691
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2693
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->sidNidPairsToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_NAM_SID_NID_NAM_Pairs;ILjava/lang/String;)[B

    move-result-object v0

    .line 2695
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2697
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setPrefVoiceSo(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 8
    .param p1, "option"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_pref_voice_so_type;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v7, 0x2000015

    const/4 v6, 0x0

    .line 2543
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setPrefVoiceSo()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 2545
    .local v3, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_PREF_VOICE_SO:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v4, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2549
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 2550
    .local v2, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v4, 0x1e

    iput v4, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 2551
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->recordNum:I

    .line 2552
    iput v6, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->offset:I

    .line 2553
    iput-object p1, v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 2555
    const-string v4, "000000"

    invoke-static {v2, v7, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 2558
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2560
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v4
.end method

.method public setPrl([BLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 7
    .param p1, "prlData"    # [B
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v6, 0x20000b4

    .line 3926
    const-string v4, "OemCdmaTelephonyManager"

    const-string v5, "setPrl()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    if-nez p1, :cond_0

    .line 3928
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3940
    :goto_0
    return-object v4

    .line 3930
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;-><init>()V

    .line 3932
    .local v3, "roamList":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;
    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;->setRoamingList([B)V

    .line 3933
    const v2, 0x20000b4

    .line 3934
    .local v2, "msgId":I
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3936
    .local v1, "msg":Landroid/os/Message;
    const-string v4, "000000"

    invoke-static {v3, v6, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->roamingListToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_roaming_list_type;ILjava/lang/String;)[B

    move-result-object v0

    .line 3938
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3940
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    goto :goto_0
.end method

.method public setPublicUserDomainName(Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "user_domain"    # Ljava/lang/String;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3613
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3615
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPublicUserDomainName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_PUBLIC_USER_ID_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3621
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3622
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f4c

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3624
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 3626
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3628
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3631
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3633
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSO68Enabled(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3840
    const-string v6, "OemCdmaTelephonyManager"

    const-string v7, "setSO68Enabled()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3842
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_SO68_ENABLED:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3846
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3847
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v6, 0x30

    iput v6, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3851
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 3852
    .local v5, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 3853
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3855
    const-string v6, "000000"

    invoke-static {v3, v8, v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3859
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3860
    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v6

    .line 3851
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v5    # "val":B
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setServiceOption(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 6
    .param p1, "serviceOption"    # Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;
    .param p2, "spcLockCode"    # Ljava/lang/String;
    .param p3, "msgH"    # Landroid/os/Handler;

    .prologue
    const v5, 0x200000c

    .line 2271
    const-string v3, "OemCdmaTelephonyManager"

    const-string v4, "setServiceOption()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const v2, 0x200000c

    .line 2274
    .local v2, "msgId":I
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2276
    .local v1, "msg":Landroid/os/Message;
    invoke-static {p1, v5, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->serviceOptionToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_ServiceOption;ILjava/lang/String;)[B

    move-result-object v0

    .line 2278
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 2280
    sget-object v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v3
.end method

.method public setSmsEvdoDomainName(Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "dmn_name"    # Ljava/lang/String;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3512
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3514
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoDomainName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_DOMAIN_NAME:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3520
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3521
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f4a

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3523
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 3524
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3526
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3529
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3531
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoPortNumber(Ljava/lang/String;Landroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3562
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3564
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoPortNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_P_CSCF_PORT_NUMBER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3570
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3571
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f4b

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3573
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 3574
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3576
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3579
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3581
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoReleaseTimer(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "timer"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3462
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3464
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoReleaseTimer - timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_RELEASE_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3470
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3471
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f49

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3473
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 3474
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3476
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3479
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3481
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoStatus(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "status"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3361
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3363
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoStatus - status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_STATUS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3369
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3370
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f47

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3372
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p1}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Z)V

    .line 3373
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3375
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3378
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3380
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSmsEvdoT1Timer(ILandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "timer"    # I
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3412
    sget-object v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3414
    .local v4, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmsEvdoT1Timer - timer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SMS_EVDO_T1_TIMER:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3420
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3421
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f48

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3423
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 3424
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3426
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 3429
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3431
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5
.end method

.method public setSo73Cop0Option(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 4935
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSo73Cop0Option - enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SO73COP0_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4939
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4940
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x2720

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4942
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 4943
    .local v4, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 4944
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4946
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4949
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4950
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 4942
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":B
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setSo73Option(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "enabled"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 4889
    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSo73Option - enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SO73_OPTION:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4893
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 4894
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x2d

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 4896
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 4897
    .local v4, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 4898
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 4900
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 4903
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 4904
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 4896
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":B
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setSprintSimLock(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "lock"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 5143
    sget-boolean v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "OemCdmaTelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSprintSimlock - lock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_SIM_LOCK:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5147
    .local v1, "msg":Landroid/os/Message;
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 5148
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v5, 0x1f5b

    iput v5, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 5150
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 5151
    .local v4, "val":B
    :goto_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 5152
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 5154
    const-string v5, "000000"

    invoke-static {v3, v8, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v0

    .line 5157
    .local v0, "data":[B
    invoke-virtual {p0, v0, v1, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 5158
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v5

    .line 5150
    .end local v0    # "data":[B
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v4    # "val":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setVZWSystemSelection(ZLandroid/os/Handler;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    .locals 9
    .param p1, "status"    # Z
    .param p2, "msgH"    # Landroid/os/Handler;

    .prologue
    const v8, 0x2000015

    .line 3022
    sget-object v5, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    .line 3024
    .local v5, "result":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->mMsgHandler:Landroid/os/Handler;

    sget-object v7, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;->RDEREQ_SET_CDMA_VZW_SS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$RdeRequestId;

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3028
    .local v2, "msg":Landroid/os/Message;
    new-instance v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;

    invoke-direct {v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;-><init>()V

    .line 3029
    .local v4, "rde":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;
    const/16 v6, 0x271e

    iput v6, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->elementID:I

    .line 3031
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3032
    .local v0, "b":B
    :goto_0
    new-instance v3, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v3, v0}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;-><init>(B)V

    .line 3034
    .local v3, "n":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v3, v4, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$Serializable;

    .line 3036
    const-string v6, "000000"

    invoke-static {v4, v8, v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->rdeDataToByteArr(Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data;ILjava/lang/String;)[B

    move-result-object v1

    .line 3038
    .local v1, "data":[B
    invoke-virtual {p0, v1, v2, p2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;->invokeOemRilRequestRaw([BLandroid/os/Message;Landroid/os/Handler;)V

    .line 3040
    sget-object v6, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_CDMA_Errno;

    return-object v6

    .line 3031
    .end local v0    # "b":B
    .end local v1    # "data":[B
    .end local v3    # "n":Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OEM_RIL_RDE_Data$rde_obj_type;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
