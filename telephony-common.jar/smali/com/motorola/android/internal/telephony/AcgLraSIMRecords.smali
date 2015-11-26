.class public Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "AcgLraSIMRecords.java"


# static fields
.field static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field static final PROPERTY_CDMA_OPERATOR_ALPHA:Ljava/lang/String; = "ro.cdma.home.operator.alpha"


# instance fields
.field private mAcgLraMccMncList:Ljava/lang/String;


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

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104065c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private getAcgLraMccMnc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "operatorNumeric":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "simOperatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 99
    move-object v0, v1

    .end local v1    # "simOperatorNumeric":Ljava/lang/String;
    :cond_2
    move-object v2, v0

    .line 102
    goto :goto_0
.end method

.method private setSimAlphaNumericSystemProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v3, "ro.cdma.home.operator.alpha"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "alpha":Ljava/lang/String;
    const-string v3, "ro.cdma.home.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "operatorNumeric":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mMncLength:I

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "simOperatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 126
    move-object v0, p1

    .line 127
    move-object v1, v2

    .line 132
    .end local v2    # "simOperatorNumeric":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const-string v3, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->getAcgLraMccMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v2, "ro.cdma.home.operator.alpha"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "operatorAlpha":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->mAcgLraMccMncList:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 57
    .end local v0    # "operatorAlpha":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "operatorAlpha":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 66
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "operator":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
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

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AcgLraSIMRecords onAllRecordsLoaded Operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/AcgLraSIMRecords;->setSimAlphaNumericSystemProperty(Ljava/lang/String;)V

    .line 74
    return-void
.end method
