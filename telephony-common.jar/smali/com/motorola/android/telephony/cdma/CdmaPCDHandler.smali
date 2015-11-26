.class public final Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;
.super Ljava/lang/Object;
.source "CdmaPCDHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static isNBPCDAllowed:Z

.field private static mCurrentIDD:Ljava/lang/String;

.field private static mCurrentMCC:I

.field private static mCurrentSID:I

.field private static mResolvedMCC:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMCCTable:Lcom/motorola/android/telephony/MCCTables;

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 22
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    .line 23
    const-string v0, "011"

    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    .line 24
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    .line 27
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "CdmaPCDHandler"

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->LOG_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    .line 32
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 33
    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    .line 34
    const-string v0, "CdmaPCDHandler"

    const-string v1, "CdmaPCDHandler is constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static getCurrentIDD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    return-object v0
.end method

.method public static getResolvedMCC()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    return v0
.end method

.method public static isNBPCDAllowed()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    return v0
.end method


# virtual methods
.method public handleSetUpProcess(IIII)Z
    .locals 7
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "tz"    # I
    .param p4, "DSTFlag"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "mccEntry":Lcom/motorola/android/telephony/MCCEntry;
    const/4 v1, 0x0

    .line 41
    .local v1, "resolvedMCC":I
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tz "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstflag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentMCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentSID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentIDD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-ne p1, v4, :cond_0

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-ne p2, v4, :cond_0

    .line 45
    const-string v3, "CdmaPCDHandler"

    const-string v4, "Return as nothing changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return v2

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v4, :cond_1

    .line 50
    const-string v2, "CdmaPCDHandler"

    const-string v4, "MCC lookup table not initialized"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v4, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found data in VZW tables with MCC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-eq p1, v4, :cond_3

    .line 59
    iget-object v4, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    sput-object v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    .line 60
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated mCurrentMCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentSID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentIDD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1
    move v1, p1

    .line 97
    :cond_2
    :goto_2
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    .line 98
    sput p2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    .line 100
    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    .line 102
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated: mCurrentMCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentSID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentIDD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mResolvedMCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-lez v1, :cond_9

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isVZWNBPCDDisabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 108
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v4, v1, p2}, Lcom/motorola/android/telephony/MCCTables;->isMCCSupportNBPCD(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    const-string v3, "CdmaPCDHandler"

    const-string v4, "MCC Support NBPCD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sput-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    .line 119
    :goto_3
    const-string v3, "CdmaPCDHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNBPCDAllowed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 63
    :cond_3
    const-string v4, "CdmaPCDHandler"

    const-string v5, "IDD NOT Updated as MCC same as before"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 68
    :cond_4
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MCC NOT found in VZW table. MCC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-ne v4, p1, :cond_5

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-ne v4, p2, :cond_5

    .line 71
    const-string v4, "CdmaPCDHandler"

    const-string v5, "IDD NOT Updated as MCC & SID same as before"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    move v1, p1

    goto/16 :goto_2

    .line 75
    :cond_5
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v4, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v1

    .line 76
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUnknownMcc return MCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-lez v1, :cond_6

    .line 78
    const-string v4, "CdmaPCDHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved the unknown mcc and get the valid MCC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v4, v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    iget-object v4, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    sput-object v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    goto/16 :goto_2

    .line 86
    :cond_6
    const-string v4, "CdmaPCDHandler"

    const-string v5, "Could not resolve unknown MCC"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-eq v4, p2, :cond_7

    .line 88
    const-string v4, "CdmaPCDHandler"

    const-string v5, "Reset MCC to 011 as SID changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v4, "011"

    sput-object v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    goto/16 :goto_2

    .line 91
    :cond_7
    const-string v4, "CdmaPCDHandler"

    const-string v5, "IDD NOT Updated as SID same as before"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 112
    :cond_8
    const-string v4, "CdmaPCDHandler"

    const-string v5, "MCC NOT Support NBPCD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    goto/16 :goto_3

    .line 116
    :cond_9
    const-string v4, "CdmaPCDHandler"

    const-string v5, "MMC unresolved"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sput-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    goto/16 :goto_3
.end method
