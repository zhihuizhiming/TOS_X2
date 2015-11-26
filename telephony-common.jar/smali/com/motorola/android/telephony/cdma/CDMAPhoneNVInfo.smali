.class public Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
.super Ljava/lang/Object;
.source "CDMAPhoneNVInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Hook_Header;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;,
        Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    }
.end annotation


# static fields
.field private static final CDMA_START:I = 0x2000000

.field private static final LOCAL_LOGD:Z = false

.field public static final MAX_LTE_BAND:I = 0x2c

.field public static final NV_TYPE_BOOL:I = 0x1

.field public static final NV_TYPE_BYTES:I = 0x3

.field public static final NV_TYPE_HEX_STRING:I = 0x4

.field public static final NV_TYPE_INT:I = 0x0

.field public static final NV_TYPE_STRING:I = 0x2

.field public static final OEM_RIL_GENERIC_FAILURE:I = 0x5

.field public static final OEM_RIL_NAM_ACCESS_COUNTER_EXCEEDED:I = 0x4

.field public static final OEM_RIL_NAM_PASSWORD_INCORRECT:I = 0x3

.field public static final OEM_RIL_NAM_READ_WRITE_FAILURE:I = 0x2

.field public static final OEM_RIL_RADIO_NOT_AVAILABLE:I = 0x1

.field private static final OEM_RIL_REQUEST_CDMA_GET_BP_APN:I = 0x2000018

.field private static final OEM_RIL_REQUEST_CDMA_GET_RDE_ITEM:I = 0x2000016

.field private static final OEM_RIL_REQUEST_CDMA_SET_BP_APN:I = 0x2000019

.field private static final OEM_RIL_REQUEST_CDMA_SET_DDTM_PREFERENCE:I = 0x20000ba

.field private static final OEM_RIL_REQUEST_CDMA_SET_RDE_ITEM:I = 0x2000015

.field public static final OEM_RIL_SUCCESS:I = 0x0

.field public static final OEM_RIL_WAITING_FOR_RESPONSE:I = -0x1

.field public static final OEM_RIL_WATCHDOG_TIMEOUT:I = 0x6

.field static final SIZE_OF_BYTE:I = 0x1

.field static final SIZE_OF_NV_ITEM:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PhoneNVInfo"

.field private static mLock:[B = null

.field private static final sDefaultSpcCode:Ljava/lang/String; = "000000"

.field private static sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# instance fields
.field private final callbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mBoolResult:Z

.field private mBytesResult:[B

.field private mCurrentMessage:Landroid/os/Message;

.field private mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

.field private mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

.field private mIntResult:I

.field private final mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

.field private mNVType:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReqId:I

.field private mStatus:I

.field private mStringResult:Ljava/lang/String;

.field private sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    .line 64
    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 110
    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    .line 118
    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/ImsSetting;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    .line 565
    const-class v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v2

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 567
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PhoneNVInfo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 570
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    .line 572
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 575
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    .line 576
    new-instance v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    invoke-direct {v1, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    .line 577
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 580
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    .line 582
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_EHRPD_ENABLED:I

    .line 584
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->RDE_NV_HDRSCP_SESSION_STATUS_I:I

    .line 586
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    .line 588
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    .line 590
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    .line 592
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    .line 594
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    .line 596
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    .line 598
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    .line 600
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    .line 602
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    .line 604
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_MULTIMODE_SCAN_TIMER:I

    .line 606
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_CDMA_SCAN_TIMER:I

    .line 608
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    .line 610
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_CDMA_AKEY_HASH:I

    .line 614
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_PROGRAM:I

    .line 616
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_AKEY:I

    .line 618
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_HIDDEN_MENU_FTS:I

    .line 623
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_1X_DATA_SERVICE_TRANSFER_TIMER:I

    .line 627
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IPV6_ENABLED:I

    .line 632
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND1_CARRIER_AGGREGATION:I

    .line 635
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND2_CARRIER_AGGREGATION:I

    .line 638
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND3_CARRIER_AGGREGATION:I

    .line 641
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND4_CARRIER_AGGREGATION:I

    .line 644
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND5_CARRIER_AGGREGATION:I

    .line 647
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND6_CARRIER_AGGREGATION:I

    .line 650
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND7_CARRIER_AGGREGATION:I

    .line 653
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND8_CARRIER_AGGREGATION:I

    .line 656
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND9_CARRIER_AGGREGATION:I

    .line 659
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND10_CARRIER_AGGREGATION:I

    .line 662
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND11_CARRIER_AGGREGATION:I

    .line 665
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND12_CARRIER_AGGREGATION:I

    .line 668
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND13_CARRIER_AGGREGATION:I

    .line 671
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND14_CARRIER_AGGREGATION:I

    .line 674
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND15_CARRIER_AGGREGATION:I

    .line 677
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND16_CARRIER_AGGREGATION:I

    .line 680
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND17_CARRIER_AGGREGATION:I

    .line 683
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND18_CARRIER_AGGREGATION:I

    .line 686
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND19_CARRIER_AGGREGATION:I

    .line 689
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND20_CARRIER_AGGREGATION:I

    .line 692
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND21_CARRIER_AGGREGATION:I

    .line 695
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND22_CARRIER_AGGREGATION:I

    .line 698
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND23_CARRIER_AGGREGATION:I

    .line 701
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND24_CARRIER_AGGREGATION:I

    .line 704
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND25_CARRIER_AGGREGATION:I

    .line 707
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND26_CARRIER_AGGREGATION:I

    .line 710
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND27_CARRIER_AGGREGATION:I

    .line 713
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND28_CARRIER_AGGREGATION:I

    .line 716
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND29_CARRIER_AGGREGATION:I

    .line 719
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND30_CARRIER_AGGREGATION:I

    .line 722
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND31_CARRIER_AGGREGATION:I

    .line 725
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND32_CARRIER_AGGREGATION:I

    .line 728
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND33_CARRIER_AGGREGATION:I

    .line 731
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND34_CARRIER_AGGREGATION:I

    .line 734
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND35_CARRIER_AGGREGATION:I

    .line 737
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND36_CARRIER_AGGREGATION:I

    .line 740
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND37_CARRIER_AGGREGATION:I

    .line 743
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND38_CARRIER_AGGREGATION:I

    .line 746
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND39_CARRIER_AGGREGATION:I

    .line 749
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND40_CARRIER_AGGREGATION:I

    .line 752
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND41_CARRIER_AGGREGATION:I

    .line 755
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND42_CARRIER_AGGREGATION:I

    .line 758
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND43_CARRIER_AGGREGATION:I

    .line 761
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_ENABLE_BAND44_CARRIER_AGGREGATION:I

    .line 765
    return-void

    .line 572
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$1002(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # [B

    .prologue
    .line 46
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B

    return-object p1
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$200()[B
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    return v0
.end method

.method static synthetic access$600(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .prologue
    .line 46
    iget v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    return v0
.end method

.method static synthetic access$702(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z

    return p1
.end method

.method static synthetic access$902(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/Phone;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 769
    const-class v1, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    if-nez v0, :cond_0

    .line 770
    new-instance v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    .line 773
    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->sInstance:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 781
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 783
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 784
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 786
    return-void
.end method

.method private removeCallback(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1483
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1484
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1485
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1486
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    iget-object v2, v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1487
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1488
    monitor-exit v3

    .line 1492
    :goto_1
    return-void

    .line 1485
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1491
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public declared-synchronized getModemAPN()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 1272
    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    const-string v6, "getModemAPN() start."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000018

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1275
    .local v4, "msg":Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    .local v2, "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAQAPNEFS "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    const-string v5, "AT+APNE?"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1281
    .local v0, "array_size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1282
    .local v1, "command":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1290
    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 1291
    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 1293
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1294
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 1296
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v7, :cond_0

    .line 1298
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1299
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1300
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1301
    :catch_0
    move-exception v3

    .line 1302
    .local v3, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1305
    .end local v3    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .line 1272
    .end local v0    # "array_size":I
    .end local v1    # "command":[Ljava/lang/String;
    .end local v2    # "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBoolean(I)Z
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1032
    monitor-enter p0

    :try_start_0
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SIG_COMP:I

    if-ne p1, v7, :cond_1

    .line 1033
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPSigComp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    .line 1078
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 1034
    :cond_1
    :try_start_1
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I

    if-eq p1, v7, :cond_0

    .line 1037
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_EPMA_SUPPORTED:I

    if-eq p1, v7, :cond_0

    .line 1040
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    if-ne p1, v7, :cond_3

    .line 1041
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSFormat()I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    .line 1042
    :cond_3
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    if-ne p1, v5, :cond_4

    .line 1043
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSOverIP()Z

    move-result v6

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1049
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1050
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1051
    const/4 v1, 0x0

    .line 1053
    .local v1, "mValue":Z
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1054
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1056
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1059
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1061
    :goto_2
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1063
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1064
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1065
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 1071
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_6

    .line 1072
    iget-boolean v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBoolResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move v6, v1

    .line 1078
    goto :goto_0

    .line 1032
    .end local v1    # "mValue":Z
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoBytes(I)[B
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 793
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 794
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 795
    const/4 v1, 0x0

    .line 797
    .local v1, "mValue":[B
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 798
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 800
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 803
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 805
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 807
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 809
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 815
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 816
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mBytesResult:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 819
    :cond_1
    monitor-exit p0

    return-object v1

    .line 790
    .end local v1    # "mValue":[B
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoHEXString(I)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 1126
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1129
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1130
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1131
    const/4 v1, 0x0

    .line 1133
    .local v1, "mValue":Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1134
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1136
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1139
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1141
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1143
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1144
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1145
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1151
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_1

    .line 1152
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1155
    :cond_1
    monitor-exit p0

    return-object v1

    .line 1126
    .end local v1    # "mValue":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoInt(I)I
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    if-ne p1, v5, :cond_1

    .line 862
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPT1Timer()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    .line 900
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 863
    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    if-ne p1, v5, :cond_2

    .line 865
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPT2Timer()I

    move-result v1

    goto :goto_0

    .line 866
    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    if-ne p1, v5, :cond_3

    .line 868
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPTfTimer()I

    move-result v1

    goto :goto_0

    .line 871
    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 874
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 875
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 876
    const/4 v1, -0x1

    .line 878
    .local v1, "mValue":I
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 879
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 881
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 884
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 886
    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 888
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 889
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 890
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 896
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    .line 897
    iget v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIntResult:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 860
    .end local v1    # "mValue":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getPhoneNVInfoString(I)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 1160
    monitor-enter p0

    :try_start_0
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PHONE_CONTEXT_URI:I

    if-ne p1, v5, :cond_1

    .line 1161
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSPhoneContextURI()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1197
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1162
    :cond_1
    :try_start_1
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    if-ne p1, v5, :cond_2

    .line 1163
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getUserDomain()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1164
    :cond_2
    sget v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    if-ne p1, v5, :cond_3

    .line 1165
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSIPLocalPort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1168
    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1171
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1172
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1173
    const/4 v1, 0x0

    .line 1175
    .local v1, "mValue":Ljava/lang/String;
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1176
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1178
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000016

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1181
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1183
    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1185
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1186
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1187
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1193
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    if-nez v5, :cond_0

    .line 1194
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1160
    .end local v1    # "mValue":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 7
    .param p1, "cb"    # Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .prologue
    .line 1242
    iget-object v6, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1243
    const/4 v3, 0x0

    .line 1246
    .local v3, "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1247
    .local v1, "b":Landroid/os/IBinder;
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1248
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .local v4, "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1249
    :try_start_1
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1250
    .end local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_2
    iget-object v5, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v5, :cond_0

    .line 1263
    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1264
    return-void

    .line 1248
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_0

    .line 1256
    :cond_1
    :try_start_3
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1257
    .end local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_4
    iput-object v1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->binder:Landroid/os/IBinder;

    .line 1258
    iput-object p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .line 1259
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1263
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .end local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    .restart local v3    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    goto :goto_2
.end method

.method public declared-synchronized setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "apn_str"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 1310
    monitor-enter p0

    :try_start_0
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000019

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1313
    .local v4, "msg":Landroid/os/Message;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v2, "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "CDMAEDITAPN "

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    const-string v5, "AT+APNE="

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    if-eqz p1, :cond_0

    .line 1318
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1322
    .local v0, "array_size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 1323
    .local v1, "command":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1331
    const/4 v5, -0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    .line 1332
    iput-object v4, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mCurrentMessage:Landroid/os/Message;

    .line 1334
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v1, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1335
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mDog:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;

    invoke-virtual {v5}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Watchdog;->watch()V

    .line 1337
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v5, v8, :cond_1

    .line 1339
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1340
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1341
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1342
    :catch_0
    move-exception v3

    .line 1343
    .local v3, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1347
    .end local v3    # "iex":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_4
    const-string v5, "PhoneNVInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setModemAPN() End: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStringResult:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v5

    .line 1310
    .end local v0    # "array_size":I
    .end local v1    # "command":[Ljava/lang/String;
    .end local v2    # "commandlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(II)I
    .locals 11
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 973
    monitor-enter p0

    :try_start_0
    sget v10, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T1_TIMER:I

    if-ne p1, v10, :cond_2

    .line 975
    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v10, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPT1Timer(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v10

    if-eqz v10, :cond_1

    .line 1028
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    :cond_1
    move v8, v9

    .line 975
    goto :goto_0

    .line 977
    :cond_2
    :try_start_1
    sget v10, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_T2_TIMER:I

    if-ne p1, v10, :cond_3

    .line 979
    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v10, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPT2Timer(I)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 981
    :cond_3
    sget v10, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TF_TIMER:I

    if-ne p1, v10, :cond_4

    .line 983
    iget-object v10, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v10, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPTfTimer(I)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 987
    :cond_4
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v9, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 992
    .local v3, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 993
    :try_start_2
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 994
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->callbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    .local v5, "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :try_start_3
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8, p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->valueChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 993
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 997
    :catch_0
    move-exception v0

    .line 999
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v8, v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;->callback:Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    invoke-interface {v8}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1002
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v5    # "r":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$Record;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 973
    .end local v3    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1002
    .restart local v1    # "i":I
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1004
    const/4 v8, 0x0

    :try_start_7
    iput v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1005
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1007
    new-instance v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1008
    .local v6, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1010
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/Integer;)V

    .line 1011
    .local v4, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v4, v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 1013
    new-instance v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v8, 0x2000015

    const-string v9, "000000"

    invoke-direct {v7, v6, v8, v9}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1016
    .local v7, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v7}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1018
    :goto_3
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 1020
    :try_start_8
    sget-object v9, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1021
    :try_start_9
    sget-object v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1022
    monitor-exit v9

    goto :goto_3

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1023
    :catch_1
    move-exception v2

    .line 1024
    .local v2, "iex":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1028
    .end local v2    # "iex":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_b
    iget v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0
.end method

.method public declared-synchronized setPhoneNVInfo(ILjava/lang/String;)I
    .locals 9
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 1201
    monitor-enter p0

    :try_start_0
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_HOME_DOMAIN:I

    if-ne p1, v7, :cond_2

    .line 1202
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v7, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setUserDomain(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    .line 1235
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    :cond_1
    move v5, v6

    .line 1202
    goto :goto_0

    .line 1204
    :cond_2
    :try_start_1
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_PCSCF_PORT:I

    if-ne p1, v7, :cond_3

    .line 1205
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-static {p2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v7, v8}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSIPLocalPort(S)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 1209
    :cond_3
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1212
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1213
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1215
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1216
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1218
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 1221
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1224
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1226
    :goto_1
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1228
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1229
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1230
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1235
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1201
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(IZ)I
    .locals 9
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1082
    monitor-enter p0

    :try_start_0
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_TEST_MODE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p1, v8, :cond_1

    .line 1121
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 1085
    :cond_1
    :try_start_1
    sget v8, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_FORMAT:I

    if-ne p1, v8, :cond_3

    .line 1086
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v8, v7}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSFormat(I)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    :cond_2
    move v7, v5

    goto :goto_1

    .line 1089
    :cond_3
    sget v7, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->MOT_NV_IMS_SMS_OVER_IP:I

    if-ne p1, v7, :cond_4

    .line 1090
    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mIMSSetting:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-virtual {v7, p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSOverIP(Z)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 1094
    :cond_4
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1097
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 1098
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 1100
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 1101
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 1103
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>(Z)V

    .line 1104
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 1106
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 1109
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1111
    :goto_2
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1113
    :try_start_2
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1114
    :try_start_3
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1115
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 1121
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_5
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1082
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPhoneNVInfo(I[B)I
    .locals 8
    .param p1, "id"    # I
    .param p2, "value"    # [B

    .prologue
    .line 825
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mMessageHandler:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$MessageHandler;

    const v6, 0x2000015

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 830
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mNVType:I

    .line 831
    iput p1, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mReqId:I

    .line 833
    new-instance v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;

    invoke-direct {v3}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;-><init>()V

    .line 834
    .local v3, "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    iput p1, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->elementID:I

    .line 836
    new-instance v2, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    invoke-direct {v2, p2}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;-><init>([B)V

    .line 837
    .local v2, "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    iput-object v2, v3, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;->dataObj:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;

    .line 839
    new-instance v4, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;

    const v5, 0x2000015

    const-string v6, "000000"

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;ILjava/lang/String;)V

    .line 842
    .local v4, "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    invoke-virtual {v4}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 844
    :goto_0
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 846
    :try_start_1
    sget-object v6, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    monitor-enter v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 847
    :try_start_2
    sget-object v5, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mLock:[B

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 848
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "iex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 855
    .end local v0    # "iex":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_4
    iget v5, p0, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->mStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v5

    .line 825
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "obj":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data$rde_obj_type;
    .end local v3    # "rde":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_RDE_Data;
    .end local v4    # "req":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo$OEM_RIL_Request;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .param p1, "cb"    # Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    .prologue
    .line 1268
    invoke-interface {p1}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->removeCallback(Landroid/os/IBinder;)V

    .line 1269
    return-void
.end method
