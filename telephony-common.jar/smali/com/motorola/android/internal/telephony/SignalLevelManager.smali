.class public Lcom/motorola/android/internal/telephony/SignalLevelManager;
.super Ljava/lang/Object;
.source "SignalLevelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;,
        Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;,
        Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final RADIOTECH_ASUNUM:I = 0x3

.field private static final RADIOTECH_CDMA:I = 0x0

.field private static final RADIOTECH_EVDO:I = 0x1

.field private static final RADIOTECH_GSM:I = 0x3

.field private static final RADIOTECH_LTE:I = 0x2

.field private static final RADIOTECH_NUM:I = 0x5

.field private static final RADIOTECH_UMTS:I = 0x4

.field public static final SL_FROM_FILE_SYSTEM:I = 0x1

.field public static final SL_FROM_XML:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SignalLevelManager"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

.field private static mUseEVDOecio:Z


# instance fields
.field private isSLFileLoaded:Z

.field private mNumberOfAsuLevels:I

.field private mNumberOfBars:I

.field private mNumberOfLTEBars:I

.field private mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

.field private mSLFileSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mUseEVDOecio:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFileSource:I

    .line 50
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->isSLFileLoaded:Z

    .line 51
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    .line 52
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    .line 53
    iput v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    .line 134
    sput-object p1, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mContext:Landroid/content/Context;

    .line 135
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->isSLFileLoaded:Z

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    .line 137
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->loadSignalLevelFile()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->isSLFileLoaded:Z

    .line 140
    :cond_0
    return-void
.end method

.method private get3GPP2AsuLevel(IIII)I
    .locals 8
    .param p1, "numBars"    # I
    .param p2, "dbm"    # I
    .param p3, "ecSnr"    # I
    .param p4, "radioTech"    # I

    .prologue
    const/16 v7, 0x63

    .line 593
    const/16 v1, 0x63

    .line 594
    .local v1, "asuLevel":I
    const/4 v0, 0x0

    .line 596
    .local v0, "alInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    aget-object v4, v4, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 597
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    aget-object v4, v4, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "alInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
    check-cast v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    .line 602
    .restart local v0    # "alInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 603
    iget-object v4, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmLevel:[I

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mDbmValue:[I

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getAsuLevelNum(II[I[I)I

    move-result v2

    .line 605
    .local v2, "dbm_asuLevel":I
    iget-object v4, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrLevel:[I

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;->mEcSnrValue:[I

    invoke-direct {p0, p1, p3, v4, v5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getAsuLevelNum(II[I[I)I

    move-result v3

    .line 610
    .local v3, "ecSnr_asuLevel":I
    if-eq v2, v7, :cond_0

    if-ne v3, v7, :cond_3

    .line 611
    :cond_0
    const/16 v1, 0x63

    .line 618
    .end local v2    # "dbm_asuLevel":I
    .end local v3    # "ecSnr_asuLevel":I
    :cond_1
    :goto_1
    return v1

    .line 599
    :cond_2
    const-string v4, "SignalLevelManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLevels:get3GPP2AsuLevel: Bars="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rule not avaliable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    .restart local v2    # "dbm_asuLevel":I
    .restart local v3    # "ecSnr_asuLevel":I
    :cond_3
    if-ge v2, v3, :cond_4

    move v1, v2

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I
    .locals 10
    .param p1, "numBars"    # I
    .param p2, "radioTech"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 490
    const/4 v4, 0x0

    .line 491
    .local v4, "signalLevel":I
    const/4 v5, 0x0

    .line 494
    .local v5, "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-ne p2, v9, :cond_2

    .line 495
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 497
    .local v0, "dbm":I
    sget-boolean v7, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mUseEVDOecio:Z

    if-ne v7, v9, :cond_1

    .line 498
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v2

    .line 508
    .local v2, "ecSnr":I
    :goto_0
    iget-object v7, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v7, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 509
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v6, v6, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    check-cast v5, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    .line 522
    .restart local v5    # "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-eqz v5, :cond_0

    .line 523
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v0, v6}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v1

    .line 524
    .local v1, "dbm_signalLevel":I
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    invoke-direct {p0, p1, v2, v6}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v3

    .line 527
    .local v3, "ecSnr_signalLevel":I
    if-ge v1, v3, :cond_5

    move v4, v1

    .end local v1    # "dbm_signalLevel":I
    .end local v3    # "ecSnr_signalLevel":I
    :cond_0
    :goto_1
    move v6, v4

    .line 531
    :goto_2
    return v6

    .line 501
    .end local v2    # "ecSnr":I
    :cond_1
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v2

    .restart local v2    # "ecSnr":I
    goto :goto_0

    .line 504
    .end local v0    # "dbm":I
    .end local v2    # "ecSnr":I
    :cond_2
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 505
    .restart local v0    # "dbm":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .restart local v2    # "ecSnr":I
    goto :goto_0

    .line 511
    :cond_3
    if-ne p2, v9, :cond_4

    .line 515
    invoke-direct {p0, p1, v6, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v6

    goto :goto_2

    .line 517
    :cond_4
    const-string v7, "SignalLevelManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDMA signal mapping num="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rule not avaliable."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v1    # "dbm_signalLevel":I
    .restart local v3    # "ecSnr_signalLevel":I
    :cond_5
    move v4, v3

    .line 527
    goto :goto_1
.end method

.method private getAsuLevelNum(II[I[I)I
    .locals 3
    .param p1, "numBars"    # I
    .param p2, "sigStrength"    # I
    .param p3, "asuLevel"    # [I
    .param p4, "asuValue"    # [I

    .prologue
    .line 415
    const/16 v0, 0x63

    .line 417
    .local v0, "asuMapLevel":I
    const/4 v2, 0x0

    aget v2, p3, v2

    if-ge p2, v2, :cond_1

    .line 418
    const/16 v0, 0x63

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 421
    aget v2, p3, v1

    if-lt p2, v2, :cond_2

    .line 422
    aget v0, p4, v1

    .line 423
    goto :goto_0

    .line 420
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private getCdmaAsuLevel(ILandroid/telephony/SignalStrength;)I
    .locals 3
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 661
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2AsuLevel(IIII)I

    move-result v0

    return v0
.end method

.method private getCdmaSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getEvdoAsuLevel(ILandroid/telephony/SignalStrength;)I
    .locals 3
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 669
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2AsuLevel(IIII)I

    move-result v0

    return v0
.end method

.method private getEvdoSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 646
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2SignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getGsmSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 625
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/SignalLevelManager;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/SignalLevelManager;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 144
    new-instance v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    .line 148
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mInstance:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    return-object v0

    .line 145
    :cond_1
    if-eqz p0, :cond_0

    .line 146
    sput-object p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getLTESignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 11
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v10, 0x2

    .line 539
    const/4 v6, 0x0

    .line 540
    .local v6, "signalLevel":I
    const/4 v7, 0x0

    .line 541
    .local v7, "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    .line 542
    .local v0, "rsrp":I
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v2

    .line 543
    .local v2, "rsrq":I
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v4

    .line 545
    .local v4, "rssnr":I
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 546
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    check-cast v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    .line 552
    .restart local v7    # "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-eqz v7, :cond_0

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, "rsrp_signalLevel":I
    const/4 v3, 0x0

    .line 555
    .local v3, "rsrq_signalLevel":I
    const/4 v5, 0x0

    .line 557
    .local v5, "rssnr_signalLevel":I
    const/4 v8, -0x1

    if-lt v0, v8, :cond_2

    .line 558
    const/4 v1, 0x0

    .line 562
    :goto_0
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    if-eqz v8, :cond_5

    .line 563
    const v8, 0x7fffffff

    if-ne v4, v8, :cond_3

    .line 565
    move v5, p1

    .line 571
    :goto_1
    if-ge v1, v5, :cond_4

    move v6, v1

    .end local v1    # "rsrp_signalLevel":I
    .end local v3    # "rsrq_signalLevel":I
    .end local v5    # "rssnr_signalLevel":I
    :cond_0
    :goto_2
    move v8, v6

    .line 586
    :goto_3
    return v8

    .line 548
    :cond_1
    const-string v8, "SignalLevelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setLevels:get3GPP2SignalLevel: Bars="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "rule not avaliable."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v8, 0x0

    goto :goto_3

    .line 560
    .restart local v1    # "rsrp_signalLevel":I
    .restart local v3    # "rsrq_signalLevel":I
    .restart local v5    # "rssnr_signalLevel":I
    :cond_2
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v0, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v1

    goto :goto_0

    .line 567
    :cond_3
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    invoke-direct {p0, p1, v4, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v5

    goto :goto_1

    :cond_4
    move v6, v5

    .line 571
    goto :goto_2

    .line 573
    :cond_5
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    if-eqz v8, :cond_7

    .line 575
    iget-object v8, v7, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    invoke-direct {p0, p1, v2, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v3

    .line 578
    if-ge v1, v3, :cond_6

    move v6, v1

    :goto_4
    goto :goto_2

    :cond_6
    move v6, v3

    goto :goto_4

    .line 582
    :cond_7
    move v6, v1

    goto :goto_2
.end method

.method private getLteAsuLevel(ILandroid/telephony/SignalStrength;)I
    .locals 3
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 677
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPP2AsuLevel(IIII)I

    move-result v0

    return v0
.end method

.method private getLteSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 654
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getLTESignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private getSignalLevelNum(II[I)I
    .locals 3
    .param p1, "numBars"    # I
    .param p2, "sigStrength"    # I
    .param p3, "sigLevel"    # [I

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 397
    .local v1, "signalLevel":I
    const/4 v2, 0x0

    aget v2, p3, v2

    if-ge p2, v2, :cond_1

    .line 398
    const/4 v1, 0x0

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 400
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 401
    aget v2, p3, v0

    if-lt p2, v2, :cond_2

    .line 402
    add-int/lit8 v1, v0, 0x1

    .line 403
    goto :goto_0

    .line 400
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private getUmtsSignalLevel(ILandroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "numBars"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 632
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v0

    return v0
.end method

.method private loadSignalLevelFile()V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->loadSignalLevelFileFromXml()V

    .line 202
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->loadSignalLevelFileFromFileSystem()V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private loadSignalLevelFileFromFileSystem()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method private loadSignalLevelFileFromXml()V
    .locals 53

    .prologue
    .line 217
    const/16 v52, 0x0

    .line 218
    .local v52, "stream":Ljava/io/FileInputStream;
    sget-object v2, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    .line 219
    .local v50, "r":Landroid/content/res/Resources;
    const v2, 0x10f000f

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v49

    .line 220
    .local v49, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v46, 0x0

    .line 221
    .local v46, "numberOfSignalEntries":I
    const/16 v43, 0x0

    .line 222
    .local v43, "numberOfAsuEntries":I
    const/16 v48, 0x0

    .line 223
    .local v48, "parsedSignalEntries":I
    const/16 v47, 0x0

    .line 228
    .local v47, "parsedAsuEntries":I
    :try_start_0
    const-string v2, "SignalLevelFile"

    move-object/from16 v0, v49

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 229
    const/4 v2, 0x0

    const-string v3, "NumberOfBars"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 230
    .local v44, "numberOfBarsString":Ljava/lang/String;
    const-string v2, "auto"

    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    .line 240
    :goto_0
    const/4 v2, 0x0

    const-string v3, "NumberOfLTEBars"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 241
    .local v45, "numberOfLTEBarsString":Ljava/lang/String;
    if-eqz v45, :cond_0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 242
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    .line 244
    :cond_0
    const/4 v2, 0x0

    const-string v3, "NumberOfAsuLevels"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    .line 246
    const/4 v2, 0x0

    const-string v3, "NumberOfSignalEntries"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 248
    const/4 v2, 0x0

    const-string v3, "NumberOfAsuEntries"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    .line 252
    :cond_1
    :goto_1
    invoke-static/range {v49 .. v49}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 253
    invoke-interface/range {v49 .. v49}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v42

    .line 254
    .local v42, "infoName":Ljava/lang/String;
    if-nez v42, :cond_8

    .line 255
    move/from16 v0, v48

    move/from16 v1, v46

    if-ne v0, v1, :cond_2

    move/from16 v0, v47

    move/from16 v1, v43

    if-eq v0, v1, :cond_3

    .line 257
    :cond_2
    const-string v2, "SignalLevelManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error Parsing SignalLevel File: SignalLevelInfo "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " defined, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " parsed. AsuLevelInfo "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " defined, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " parsed."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_3
    move-object/from16 v0, v49

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_4

    .line 379
    check-cast v49, Landroid/content/res/XmlResourceParser;

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v49 .. v49}, Landroid/content/res/XmlResourceParser;->close()V

    .line 382
    :cond_4
    if-eqz v52, :cond_5

    .line 383
    :try_start_1
    throw v52
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 389
    .end local v42    # "infoName":Ljava/lang/String;
    .end local v44    # "numberOfBarsString":Ljava/lang/String;
    .end local v45    # "numberOfLTEBarsString":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 235
    .restart local v44    # "numberOfBarsString":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_2
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v41

    .line 237
    .local v41, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 375
    .end local v41    # "e":Ljava/lang/NumberFormatException;
    .end local v44    # "numberOfBarsString":Ljava/lang/String;
    :catch_1
    move-exception v41

    .line 376
    .local v41, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "SignalLevelManager"

    const-string v3, "Got exception while loading SignalLevel file."

    move-object/from16 v0, v41

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    move-object/from16 v0, v49

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_7

    .line 379
    check-cast v49, Landroid/content/res/XmlResourceParser;

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v49 .. v49}, Landroid/content/res/XmlResourceParser;->close()V

    .line 382
    :cond_7
    if-eqz v52, :cond_5

    .line 383
    :try_start_5
    throw v52
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 385
    .end local v41    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 263
    .restart local v42    # "infoName":Ljava/lang/String;
    .restart local v44    # "numberOfBarsString":Ljava/lang/String;
    .restart local v45    # "numberOfLTEBarsString":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_6
    const-string v2, "SignalLevelInfo"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 264
    const/4 v2, 0x0

    const-string v3, "RadioType"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseRadioType(Ljava/lang/String;)I

    move-result v51

    .line 265
    .local v51, "radioTech":I
    const/4 v2, 0x0

    const-string v3, "SignalBars"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 267
    .local v4, "slInfoBars":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    if-eq v2, v4, :cond_9

    const/4 v2, 0x2

    move/from16 v0, v51

    if-ne v0, v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    if-ne v2, v4, :cond_a

    .line 270
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v51

    if-ne v0, v2, :cond_b

    .line 271
    const/4 v2, 0x0

    const-string v3, "AsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "asuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "OemSigStrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "oemSigstrLevel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x3

    aget-object v8, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x3

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    .line 321
    .end local v5    # "asuLevel":Ljava/lang/String;
    .end local v6    # "oemSigstrLevel":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v48, v48, 0x1

    .line 322
    goto/16 :goto_1

    .line 278
    :cond_b
    const/4 v2, 0x4

    move/from16 v0, v51

    if-ne v0, v2, :cond_e

    .line 279
    const/4 v2, 0x0

    const-string v3, "AsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .restart local v5    # "asuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "OemSigStrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    .restart local v6    # "oemSigstrLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "OemBitErrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "oemBitErrLevel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v8, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x4

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 378
    .end local v4    # "slInfoBars":I
    .end local v5    # "asuLevel":Ljava/lang/String;
    .end local v6    # "oemSigstrLevel":Ljava/lang/String;
    .end local v7    # "oemBitErrLevel":Ljava/lang/String;
    .end local v42    # "infoName":Ljava/lang/String;
    .end local v44    # "numberOfBarsString":Ljava/lang/String;
    .end local v45    # "numberOfLTEBarsString":Ljava/lang/String;
    .end local v51    # "radioTech":I
    :catchall_0
    move-exception v2

    move-object/from16 v0, v49

    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_c

    .line 379
    check-cast v49, Landroid/content/res/XmlResourceParser;

    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v49 .. v49}, Landroid/content/res/XmlResourceParser;->close()V

    .line 382
    :cond_c
    if-eqz v52, :cond_d

    .line 383
    :try_start_7
    throw v52
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 378
    :cond_d
    :goto_4
    throw v2

    .line 288
    .restart local v4    # "slInfoBars":I
    .restart local v42    # "infoName":Ljava/lang/String;
    .restart local v44    # "numberOfBarsString":Ljava/lang/String;
    .restart local v45    # "numberOfLTEBarsString":Ljava/lang/String;
    .restart local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v51    # "radioTech":I
    :cond_e
    if-nez v51, :cond_f

    .line 289
    const/4 v2, 0x0

    :try_start_8
    const-string v3, "DbmLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 290
    .local v12, "dbmLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "EcioLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 291
    .local v13, "ecioLevel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/4 v11, 0x0

    move-object/from16 v9, p0

    move v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 294
    .end local v12    # "dbmLevel":Ljava/lang/String;
    .end local v13    # "ecioLevel":Ljava/lang/String;
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v51

    if-ne v0, v2, :cond_11

    .line 295
    const/4 v2, 0x0

    const-string v3, "DbmLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    .restart local v12    # "dbmLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 298
    .local v19, "snrLevel":Ljava/lang/String;
    if-eqz v19, :cond_10

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v14, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/16 v17, 0x0

    move-object/from16 v15, p0

    move/from16 v16, v4

    move-object/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x1

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 303
    :cond_10
    const/4 v2, 0x0

    const-string v3, "EcioLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 304
    .restart local v13    # "ecioLevel":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 305
    const/4 v2, 0x1

    sput-boolean v2, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mUseEVDOecio:Z

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    const/4 v11, 0x0

    move-object/from16 v9, p0

    move v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x1

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 312
    .end local v12    # "dbmLevel":Ljava/lang/String;
    .end local v13    # "ecioLevel":Ljava/lang/String;
    .end local v19    # "snrLevel":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x2

    move/from16 v0, v51

    if-ne v0, v2, :cond_a

    .line 313
    const/4 v2, 0x0

    const-string v3, "RsrqLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 314
    .local v17, "rsrqLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "RsrpLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 315
    .local v18, "rsrpLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 316
    .restart local v19    # "snrLevel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v14, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    move-object/from16 v15, p0

    move/from16 v16, v4

    invoke-direct/range {v14 .. v19}, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfSignalEntries:[I

    const/4 v3, 0x2

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto/16 :goto_3

    .line 322
    .end local v4    # "slInfoBars":I
    .end local v17    # "rsrqLevel":Ljava/lang/String;
    .end local v18    # "rsrpLevel":Ljava/lang/String;
    .end local v19    # "snrLevel":Ljava/lang/String;
    .end local v51    # "radioTech":I
    :cond_12
    const-string v2, "AsuLevelInfo"

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const/4 v2, 0x0

    const-string v3, "RadioType"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseRadioType(Ljava/lang/String;)I

    move-result v51

    .line 324
    .restart local v51    # "radioTech":I
    const/4 v2, 0x0

    const-string v3, "AsuLevels"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 326
    .local v22, "asuInfolevels":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_13

    .line 328
    if-nez v51, :cond_14

    .line 329
    const/4 v2, 0x0

    const-string v3, "DbmAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 330
    .local v23, "dbmAsuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "DbmAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 331
    .local v24, "dbmAsuValue":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "EcioAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 332
    .local v25, "ecioAsuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "EcioAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 333
    .local v26, "ecioAsuValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v20, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v26}, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    .line 357
    .end local v23    # "dbmAsuLevel":Ljava/lang/String;
    .end local v24    # "dbmAsuValue":Ljava/lang/String;
    .end local v25    # "ecioAsuLevel":Ljava/lang/String;
    .end local v26    # "ecioAsuValue":Ljava/lang/String;
    :cond_13
    :goto_5
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_1

    .line 337
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, v51

    if-ne v0, v2, :cond_15

    .line 338
    const/4 v2, 0x0

    const-string v3, "DbmAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 339
    .restart local v23    # "dbmAsuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "DbmAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 340
    .restart local v24    # "dbmAsuValue":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 341
    .local v32, "snrAsuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 342
    .local v33, "snrAsuValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v27, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    move-object/from16 v28, p0

    move/from16 v29, v22

    move-object/from16 v30, v23

    move-object/from16 v31, v24

    invoke-direct/range {v27 .. v33}, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    const/4 v3, 0x1

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3

    goto :goto_5

    .line 346
    .end local v23    # "dbmAsuLevel":Ljava/lang/String;
    .end local v24    # "dbmAsuValue":Ljava/lang/String;
    .end local v32    # "snrAsuLevel":Ljava/lang/String;
    .end local v33    # "snrAsuValue":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x2

    move/from16 v0, v51

    if-ne v0, v2, :cond_13

    .line 347
    const/4 v2, 0x0

    const-string v3, "RsrpAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 348
    .local v37, "rsrpAsuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "RsrpAsuValue"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 349
    .local v38, "rsrpAsuValue":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 350
    .local v39, "cqiAsuLevel":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "SnrAsuLevel"

    move-object/from16 v0, v49

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 351
    .local v40, "cqiAsuValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mAsuInfoTable:[Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v34, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;

    move-object/from16 v35, p0

    move/from16 v36, v22

    invoke-direct/range {v34 .. v40}, Lcom/motorola/android/internal/telephony/SignalLevelManager$AsuLevelInfo;-><init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v2, v2, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mNumberOfAsuEntries:[I

    const/4 v3, 0x2

    aget v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v2, v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 385
    .end local v22    # "asuInfolevels":I
    .end local v37    # "rsrpAsuLevel":Ljava/lang/String;
    .end local v38    # "rsrpAsuValue":Ljava/lang/String;
    .end local v39    # "cqiAsuLevel":Ljava/lang/String;
    .end local v40    # "cqiAsuValue":Ljava/lang/String;
    .end local v42    # "infoName":Ljava/lang/String;
    .end local v44    # "numberOfBarsString":Ljava/lang/String;
    .end local v45    # "numberOfLTEBarsString":Ljava/lang/String;
    .end local v49    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v51    # "radioTech":I
    :catch_3
    move-exception v3

    goto/16 :goto_4
.end method

.method private parseRadioType(Ljava/lang/String;)I
    .locals 2
    .param p1, "RadioTypeString"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "radioType":I
    const-string v1, "GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/4 v0, 0x3

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    const-string v1, "UMTS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const/4 v0, 0x4

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "CDMA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    const-string v1, "EVDO"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_4
    const-string v1, "LTE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static parseSignalLevelString(ILjava/lang/String;)[I
    .locals 6
    .param p0, "signalBars"    # I
    .param p1, "signalLevelString"    # Ljava/lang/String;

    .prologue
    .line 159
    new-array v1, p0, [I

    .line 160
    .local v1, "signalLevel":[I
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "splitLevel":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, p0, :cond_1

    .line 162
    const-string v3, "SignalLevelManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing SignalLevelFile: signalBars: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return-object v1

    .line 165
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 166
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I
    .locals 12
    .param p1, "numBars"    # I
    .param p2, "radioTech"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    .line 435
    const/4 v5, 0x0

    .line 436
    .local v5, "signalLevel":I
    const/4 v6, 0x0

    .line 437
    .local v6, "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 438
    .local v0, "asu":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->useOem()Z

    move-result v7

    .line 439
    .local v7, "useOem":Z
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmOemSignalStrength()I

    move-result v3

    .line 440
    .local v3, "oemSigStr":I
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmOemBitErrorRate()I

    move-result v2

    .line 442
    .local v2, "oemBitErr":I
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 443
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mSLFile:Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelFile;->mSignalInfoTable:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    check-cast v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;

    .line 455
    .restart local v6    # "slInfo":Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
    if-eqz v6, :cond_1

    .line 460
    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    if-nez v8, :cond_6

    .line 461
    :cond_0
    if-ne p2, v10, :cond_4

    if-gez v3, :cond_4

    .line 462
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v3, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v5

    :cond_1
    :goto_0
    move v8, v5

    .line 482
    :goto_1
    return v8

    .line 445
    :cond_2
    if-ne p2, v11, :cond_3

    .line 448
    invoke-virtual {p0, p1, v10, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->get3GPPSignalLevel(IILandroid/telephony/SignalStrength;)I

    move-result v8

    goto :goto_1

    .line 450
    :cond_3
    const-string v8, "SignalLevelManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GSM signal mapping num="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rule not avaliable."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v8, 0x0

    goto :goto_1

    .line 463
    :cond_4
    if-ne p2, v11, :cond_1

    if-gez v3, :cond_1

    .line 464
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    invoke-direct {p0, p1, v3, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v4

    .line 466
    .local v4, "rscp_signalLevel":I
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    invoke-direct {p0, p1, v2, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v1

    .line 470
    .local v1, "ecno_signalLevel":I
    if-ge v4, v1, :cond_5

    move v5, v4

    .line 472
    :goto_2
    goto :goto_0

    :cond_5
    move v5, v1

    .line 470
    goto :goto_2

    .line 474
    .end local v1    # "ecno_signalLevel":I
    .end local v4    # "rscp_signalLevel":I
    :cond_6
    const/16 v8, 0x63

    if-ne v0, v8, :cond_7

    .line 475
    const/4 v5, 0x0

    goto :goto_0

    .line 477
    :cond_7
    iget-object v8, v6, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    invoke-direct {p0, p1, v0, v8}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getSignalLevelNum(II[I)I

    move-result v5

    goto :goto_0
.end method

.method public getNumberOfBars()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    return v0
.end method

.method public setLevels(Landroid/telephony/SignalStrength;)V
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 688
    iget v1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfBars:I

    .line 689
    .local v1, "numberOfBars":I
    iget v2, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfLTEBars:I

    .line 690
    .local v2, "numberOfLTEBars":I
    iget v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager;->mNumberOfAsuLevels:I

    .line 691
    .local v0, "numberOfAsuLevels":I
    if-nez v1, :cond_0

    .line 692
    const/4 v1, 0x4

    .line 693
    const-string v3, "SignalLevelManager"

    const-string v4, "No NumberOfBars settings, set it as default 4."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    if-nez v2, :cond_1

    .line 696
    move v2, v1

    .line 699
    :cond_1
    invoke-virtual {p1, v1}, Landroid/telephony/SignalStrength;->setMaxLevel(I)V

    .line 701
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 702
    invoke-direct {p0, v2, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getLteSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setLteLevel(I)V

    .line 704
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getUmtsSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setUmtsLevel(I)V

    .line 705
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getGsmSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setGsmLevel(I)V

    .line 714
    :goto_0
    return-void

    .line 707
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getLteSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setLteLevel(I)V

    .line 708
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getCdmaSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setCdmaLevel(I)V

    .line 709
    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getEvdoSignalLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setEvdoLevel(I)V

    .line 710
    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getCdmaAsuLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setCdmaAsuLevel(I)V

    .line 711
    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getEvdoAsuLevel(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->setEvdoAsuLevel(I)V

    goto :goto_0
.end method
