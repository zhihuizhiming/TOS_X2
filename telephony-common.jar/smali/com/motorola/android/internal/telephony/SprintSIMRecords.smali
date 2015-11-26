.class public Lcom/motorola/android/internal/telephony/SprintSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "SprintSIMRecords.java"


# static fields
.field static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field static final PROPERTY_CDMA_OPERATOR_ALPHA:Ljava/lang/String; = "ro.cdma.home.operator.alpha"


# instance fields
.field private mSprintMccMncList:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040659

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private getSprintMccMnc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "simOperatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 78
    move-object v0, v1

    .line 81
    .end local v1    # "simOperatorNumeric":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSprintMccMnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 82
    return-object v0
.end method

.method private setSimAlphaSystemProperty(Ljava/lang/String;)V
    .locals 5
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "alpha":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "simOperatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->mSprintMccMncList:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 100
    move-object v0, p1

    .line 103
    .end local v1    # "simOperatorNumeric":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set system property for operator alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 104
    const-string v2, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->getSprintMccMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAllRecordsLoaded()V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 49
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 51
    const-string v1, "gsm.sim.operator.iso-country"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/SprintSIMRecords;->setSimAlphaSystemProperty(Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void
.end method
