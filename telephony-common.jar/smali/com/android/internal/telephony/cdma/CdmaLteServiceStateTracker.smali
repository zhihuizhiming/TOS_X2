.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
    }
.end annotation


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mColdSimDetected:Z

.field private mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    .line 68
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 62
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 63
    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 75
    const-string v0, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private broadcastColdSimIntent(Z)V
    .locals 3
    .param p1, "isColdSim"    # Z

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.cold_sim_detected"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    const-string v1, "detected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_COLD_SIM_DETECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 270
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 271
    return-void
.end method

.method private detectColdSim(III)V
    .locals 1
    .param p1, "regState"    # I
    .param p2, "rejCode"    # I
    .param p3, "type"    # I

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRegistrationDenied(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 254
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->broadcastColdSimIntent(Z)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 259
    const-string v0, "cold sim is activated, get lte service"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->broadcastColdSimIntent(Z)V

    goto :goto_0
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 793
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 798
    if-eqz p1, :cond_0

    .line 800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 803
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 800
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 810
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRegistrationDenied(I)Z
    .locals 2
    .param p1, "regState"    # I

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 244
    :cond_0
    const-string v0, "registration is denied"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveDataIsoCountryCode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 722
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "operatorNumeric":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 725
    .local v2, "radioTech":I
    const/16 v4, 0xe

    if-eq v4, v2, :cond_0

    const/16 v4, 0xd

    if-ne v4, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 727
    .local v0, "mustReportOperator":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 729
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 730
    :cond_1
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataIsoCountryCode:Ljava/lang/String;

    .line 739
    :goto_1
    return-void

    .end local v0    # "mustReportOperator":Z
    :cond_2
    move v0, v3

    .line 725
    goto :goto_0

    .line 732
    .restart local v0    # "mustReportOperator":Z
    :cond_3
    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataIsoCountryCode:Ljava/lang/String;

    goto :goto_1

    .line 737
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsoCountryCode:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataIsoCountryCode:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 879
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 821
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    .line 823
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 90
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 92
    :sswitch_0
    const-string v2, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 94
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 97
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 99
    .local v1, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x1b -> :sswitch_1
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 17
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 122
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 123
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    .line 125
    .local v14, "states":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " states="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 129
    const/4 v15, 0x0

    .line 130
    .local v15, "type":I
    const/4 v12, -0x1

    .line 131
    .local v12, "regState":I
    const/4 v13, -0x1

    .line 133
    .local v13, "rejCode":I
    array-length v1, v14

    if-lez v1, :cond_2

    .line 135
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 138
    array-length v1, v14

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v1, v0, :cond_0

    const/4 v1, 0x3

    aget-object v1, v14, v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x3

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 143
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isRegistrationDenied(I)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, v14

    const/16 v16, 0x5

    move/from16 v0, v16

    if-lt v1, v0, :cond_1

    const/4 v1, 0x4

    aget-object v1, v14, v1

    if-eqz v1, :cond_1

    .line 144
    const/4 v1, 0x4

    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 152
    :cond_1
    :goto_0
    array-length v1, v14

    const/16 v16, 0xa

    move/from16 v0, v16

    if-lt v1, v0, :cond_2

    .line 159
    const/4 v11, 0x0

    .line 162
    .local v11, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 163
    const/4 v1, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 176
    .local v2, "mcc":I
    :goto_1
    const/4 v1, 0x3

    :try_start_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    .line 186
    .local v3, "mnc":I
    :goto_2
    const/4 v1, 0x6

    :try_start_3
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v6

    .line 193
    .local v6, "tac":I
    :goto_3
    const/4 v1, 0x7

    :try_start_4
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    .line 200
    .local v5, "pci":I
    :goto_4
    const/16 v1, 0x8

    :try_start_5
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v4

    .line 207
    .local v4, "eci":I
    :goto_5
    const/16 v1, 0x9

    :try_start_6
    aget-object v1, v14, v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v7

    .line 214
    .local v7, "csgid":I
    :goto_6
    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v1 .. v6}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: mNewLteCellIdentity="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 222
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v15}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v8

    .line 224
    .local v8, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v8}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " regState="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " dataRadioTechnology="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 234
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v15}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->detectColdSim(III)V

    .line 238
    .end local v8    # "dataRegState":I
    .end local v12    # "regState":I
    .end local v13    # "rejCode":I
    .end local v14    # "states":[Ljava/lang/String;
    .end local v15    # "type":I
    :goto_7
    return-void

    .line 148
    .restart local v12    # "regState":I
    .restart local v13    # "rejCode":I
    .restart local v14    # "states":[Ljava/lang/String;
    .restart local v15    # "type":I
    :catch_0
    move-exception v10

    .line 149
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .restart local v11    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 166
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 167
    const/4 v1, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v2

    .restart local v2    # "mcc":I
    goto/16 :goto_1

    .line 168
    .end local v2    # "mcc":I
    :catch_2
    move-exception v10

    .line 169
    .local v10, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad mcc operatorNumeric="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " ex="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 171
    const-string v11, ""

    .line 172
    const v2, 0x7fffffff

    .restart local v2    # "mcc":I
    goto/16 :goto_1

    .line 177
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 178
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad mnc operatorNumeric="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 180
    const v3, 0x7fffffff

    .restart local v3    # "mnc":I
    goto/16 :goto_2

    .line 187
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 188
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad tac states[6]="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x6

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 190
    const v6, 0x7fffffff

    .restart local v6    # "tac":I
    goto/16 :goto_3

    .line 194
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 195
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad pci states[7]="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x7

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 197
    const v5, 0x7fffffff

    .restart local v5    # "pci":I
    goto/16 :goto_4

    .line 201
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 202
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handlePollStateResultMessage: bad eci states[8]="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v16, 0x8

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, " e="

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 204
    const v4, 0x7fffffff

    .restart local v4    # "eci":I
    goto/16 :goto_5

    .line 208
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 212
    .restart local v9    # "e":Ljava/lang/Exception;
    const v7, 0x7fffffff

    .restart local v7    # "csgid":I
    goto/16 :goto_6

    .line 236
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v4    # "eci":I
    .end local v5    # "pci":I
    .end local v6    # "tac":I
    .end local v7    # "csgid":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "operatorNumeric":Ljava/lang/String;
    .end local v12    # "regState":I
    .end local v13    # "rejCode":I
    .end local v14    # "states":[Ljava/lang/String;
    .end local v15    # "type":I
    :cond_3
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_7
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 774
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 781
    :goto_0
    return v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    .line 777
    const-string v0, "ro.ril.svlte1x"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_2

    .line 779
    const-string v0, "ro.ril.svdo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 781
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 869
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 874
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/16 v4, 0xe

    .line 744
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 748
    const/4 p2, 0x0

    .line 750
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 752
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 753
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 754
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfo;->setTimeStamp(J)V

    .line 755
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfo;->setTimeStampType(I)V

    .line 756
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 759
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 764
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    .line 765
    return v1

    .line 764
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onUpdateIccAvailability()V
    .locals 3

    .prologue
    .line 836
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onUpdateIccAvailability()V

    .line 838
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    if-eqz v1, :cond_1

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "resetColdSim":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_2

    .line 841
    const-string v1, "uicc application is null, reset cold sim"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x1

    .line 847
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 848
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    .line 849
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mColdSimDetected:Z

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->broadcastColdSimIntent(Z)V

    .line 852
    .end local v0    # "resetColdSim":Z
    :cond_1
    return-void

    .line 843
    .restart local v0    # "resetColdSim":Z
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 844
    const-string v1, "icc card is absent, reset cold sim"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 845
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 279
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 318
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 284
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 293
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 53

    .prologue
    .line 322
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "] newSS=["

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "]"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v46

    .line 327
    .local v46, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_0

    .line 329
    invoke-static/range {v46 .. v46}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v47

    if-eqz v47, :cond_0

    const/16 v47, 0xd

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 335
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-eqz v47, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_25

    const/16 v27, 0x1

    .line 340
    .local v27, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-eqz v47, :cond_26

    const/16 v19, 0x1

    .line 343
    .local v19, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-eqz v47, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-nez v47, :cond_27

    const/4 v12, 0x1

    .line 347
    .local v12, "hasCdmaDataConnectionAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-nez v47, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-eqz v47, :cond_28

    const/4 v14, 0x1

    .line 351
    .local v14, "hasCdmaDataConnectionDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_29

    const/4 v13, 0x1

    .line 354
    .local v13, "hasCdmaDataConnectionChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_2a

    const/16 v28, 0x1

    .line 357
    .local v28, "hasVoiceRadioTechnologyChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_2b

    const/16 v16, 0x1

    .line 360
    .local v16, "hasDataRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-nez v47, :cond_2c

    const/4 v15, 0x1

    .line 363
    .local v15, "hasChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getState()I

    move-result v47

    if-nez v47, :cond_2d

    const/16 v30, 0x1

    .line 366
    .local v30, "isValidPrevRoam":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v37

    .line 367
    .local v37, "prevIntlRoaming":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v36

    .line 370
    .local v36, "prevDataRoaming":Z
    const/16 v18, 0x0

    .line 371
    .local v18, "hasDataRoamingOn":Z
    const/16 v17, 0x0

    .line 372
    .local v17, "hasDataRoamingOff":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEnhancedDataRoaming:Z

    move/from16 v47, v0

    if-nez v47, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-nez v47, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_2e

    const/16 v18, 0x1

    .line 375
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-nez v47, :cond_2f

    const/16 v17, 0x1

    .line 380
    :cond_1
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-nez v47, :cond_30

    const/16 v24, 0x1

    .line 382
    .local v24, "hasLocationChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-nez v47, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xe

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xe

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_31

    :cond_3
    const/4 v11, 0x1

    .line 389
    .local v11, "has4gHandoff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xe

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_32

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xe

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0xd

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_32

    const/16 v26, 0x1

    .line 395
    .local v26, "hasMultiApnSupport":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-lt v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-gt v0, v1, :cond_33

    const/16 v25, 0x1

    .line 399
    .local v25, "hasLostMultiApnSupport":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_34

    const/16 v33, 0x1

    .line 402
    .local v33, "needNotifyData":Z
    :goto_f
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "pollStateDone: hasRegistered="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasDeegistered="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasChanged="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasDataRoamingOn="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasDataRoamingOff="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasLocationChanged="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " has4gHandoff = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasMultiApnSupport="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasLostMultiApnSupport="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_6

    .line 423
    :cond_5
    const v47, 0xc3c4

    const/16 v48, 0x4

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    aput-object v50, v48, v49

    const/16 v49, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    aput-object v50, v48, v49

    invoke-static/range {v47 .. v48}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 428
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v45, v0

    .line 429
    .local v45, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 430
    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v42, v0

    .line 435
    .local v42, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 436
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 440
    if-eqz v28, :cond_7

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 444
    :cond_7
    if-eqz v16, :cond_8

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v49

    invoke-static/range {v49 .. v49}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v47 .. v49}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/16 v47, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    :cond_8
    if-eqz v27, :cond_9

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 456
    :cond_9
    if-eqz v15, :cond_e

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v47, v0

    invoke-interface/range {v47 .. v47}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v47

    if-eqz v47, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    move-result v47

    if-eqz v47, :cond_b

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_35

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v9

    .line 479
    :cond_a
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 482
    .end local v9    # "eriText":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v47, v0

    if-eqz v47, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v47

    sget-object v48, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v47, v0

    if-eqz v47, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_c

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v40

    .line 490
    .local v40, "showSpn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v29

    .line 492
    .local v29, "iconIndex":I
    if-eqz v40, :cond_c

    const/16 v47, 0x1

    move/from16 v0, v29

    move/from16 v1, v47

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v47

    if-eqz v47, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v47, v0

    if-eqz v47, :cond_c

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 501
    .end local v29    # "iconIndex":I
    .end local v40    # "showSpn":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v47 .. v49}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v47, "gsm.operator.numeric"

    const-string v48, ""

    invoke-static/range {v47 .. v48}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 506
    .local v38, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v35

    .line 509
    .local v35, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v47

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v41

    .line 518
    .local v41, "sid":I
    const-string v47, "sprint"

    const-string v48, "ro.mot.build.customerid"

    const-string v49, "0"

    invoke-static/range {v48 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_38

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.operator.numeric"

    const-string v49, "gsm.sim.operator.numeric"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v47 .. v49}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v47, "CDMA SST Set PROPERTY_OPERATOR_NUMERIC to PROPERTY_ICC_OPERATOR_NUMERIC = gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 534
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v38

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 537
    if-nez v35, :cond_39

    .line 538
    const-string v47, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.operator.iso-country"

    const-string v49, ""

    invoke-virtual/range {v47 .. v49}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v47, ""

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsoCountryCode:Ljava/lang/String;

    .line 541
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 571
    :cond_d
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v48, v0

    const-string v49, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v47

    if-eqz v47, :cond_3a

    const-string v47, "true"

    :goto_13
    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->resolveDataIsoCountryCode()V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsoCountryCode:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getRoamingType(ZLandroid/telephony/ServiceState;Ljava/lang/String;)Landroid/telephony/ServiceState$RoamingType;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setVoiceRoamingType(Landroid/telephony/ServiceState$RoamingType;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataIsoCountryCode:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getRoamingType(ZLandroid/telephony/ServiceState;Ljava/lang/String;)Landroid/telephony/ServiceState$RoamingType;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/telephony/ServiceState;->setDataRoamingType(Landroid/telephony/ServiceState$RoamingType;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v48, v0

    const-string v49, "gsm.operator.isinterroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v47

    if-eqz v47, :cond_3b

    const-string v47, "true"

    :goto_14
    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 586
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Broadcasting ServiceState : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 596
    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v38    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v41    # "sid":I
    :cond_e
    if-eqz v14, :cond_f

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 600
    :cond_f
    const/4 v8, 0x0

    .line 602
    .local v8, "dataChangedReason":Ljava/lang/String;
    if-nez v13, :cond_10

    if-eqz v16, :cond_11

    .line 603
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 607
    const-string v8, "nwTypeChanged"

    .line 623
    const/16 v33, 0x1

    .line 626
    :cond_11
    if-eqz v33, :cond_12

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 630
    :cond_12
    if-nez v12, :cond_13

    if-eqz v11, :cond_14

    .line 631
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 635
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEnhancedDataRoaming:Z

    move/from16 v47, v0

    if-eqz v47, :cond_1f

    .line 636
    const/16 v21, 0x0

    .line 637
    .local v21, "hasDomesticRoamingOn":Z
    const/16 v20, 0x0

    .line 638
    .local v20, "hasDomesticRoamingOff":Z
    const/16 v23, 0x0

    .line 639
    .local v23, "hasInterRoamingOn":Z
    const/16 v22, 0x0

    .line 641
    .local v22, "hasInterRoamingOff":Z
    if-eqz v30, :cond_15

    if-eqz v36, :cond_16

    :cond_15
    if-nez v30, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v47

    if-eqz v47, :cond_18

    :cond_17
    if-eqz v30, :cond_3c

    if-nez v37, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v47

    if-nez v47, :cond_3c

    :cond_18
    const/16 v21, 0x1

    .line 645
    :goto_15
    if-eqz v30, :cond_19

    if-eqz v37, :cond_1a

    :cond_19
    if-nez v30, :cond_3d

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v47

    if-eqz v47, :cond_3d

    const/16 v23, 0x1

    .line 648
    :goto_16
    if-eqz v30, :cond_3e

    if-eqz v36, :cond_3e

    if-nez v37, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v47

    if-eqz v47, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v47

    if-eqz v47, :cond_3e

    :cond_1b
    const/16 v20, 0x1

    .line 650
    :goto_17
    if-eqz v30, :cond_3f

    if-eqz v37, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v47

    if-nez v47, :cond_3f

    const/16 v22, 0x1

    .line 654
    :goto_18
    if-eqz v20, :cond_1c

    .line 656
    const-string v47, "hasDomesticRoamingOff"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDomesticRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 660
    :cond_1c
    if-eqz v22, :cond_1d

    .line 662
    const-string v47, "hasInterRoamingOff"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mInterRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 666
    :cond_1d
    if-eqz v21, :cond_1e

    .line 668
    const-string v47, "hasDomesticRoamingOn"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDomesticRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 672
    :cond_1e
    if-eqz v23, :cond_1f

    .line 674
    const-string v47, "hasInterRoamingOn"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mInterRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 682
    .end local v20    # "hasDomesticRoamingOff":Z
    .end local v21    # "hasDomesticRoamingOn":Z
    .end local v22    # "hasInterRoamingOff":Z
    .end local v23    # "hasInterRoamingOn":Z
    :cond_1f
    if-eqz v18, :cond_20

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 686
    :cond_20
    if-eqz v17, :cond_21

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 691
    :cond_21
    if-eqz v24, :cond_22

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 695
    :cond_22
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v5, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 697
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v7, Landroid/telephony/CellInfoLte;

    .line 699
    .local v7, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-nez v47, :cond_40

    const/4 v6, 0x1

    .line 700
    .local v6, "cidChanged":Z
    :goto_19
    if-nez v27, :cond_23

    if-nez v19, :cond_23

    if-eqz v6, :cond_24

    .line 702
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v49

    const-wide/16 v51, 0x3e8

    mul-long v43, v49, v51

    .line 703
    .local v43, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    if-nez v47, :cond_41

    const/16 v39, 0x1

    .line 704
    .local v39, "registered":Z
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 706
    move/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/telephony/CellInfo;->setRegisterd(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 709
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "pollStateDone: hasRegistered="

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v49, " hasDeregistered="

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v49, " cidChanged="

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v49, " mCellInfo="

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    .end local v39    # "registered":Z
    .end local v43    # "timeStamp":J
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 717
    monitor-exit v48
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    return-void

    .line 337
    .end local v5    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v6    # "cidChanged":Z
    .end local v7    # "cil":Landroid/telephony/CellInfoLte;
    .end local v8    # "dataChangedReason":Ljava/lang/String;
    .end local v11    # "has4gHandoff":Z
    .end local v12    # "hasCdmaDataConnectionAttached":Z
    .end local v13    # "hasCdmaDataConnectionChanged":Z
    .end local v14    # "hasCdmaDataConnectionDetached":Z
    .end local v15    # "hasChanged":Z
    .end local v16    # "hasDataRadioTechnologyChanged":Z
    .end local v17    # "hasDataRoamingOff":Z
    .end local v18    # "hasDataRoamingOn":Z
    .end local v19    # "hasDeregistered":Z
    .end local v24    # "hasLocationChanged":Z
    .end local v25    # "hasLostMultiApnSupport":Z
    .end local v26    # "hasMultiApnSupport":Z
    .end local v27    # "hasRegistered":Z
    .end local v28    # "hasVoiceRadioTechnologyChanged":Z
    .end local v30    # "isValidPrevRoam":Z
    .end local v33    # "needNotifyData":Z
    .end local v36    # "prevDataRoaming":Z
    .end local v37    # "prevIntlRoaming":Z
    .end local v42    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v45    # "tss":Landroid/telephony/ServiceState;
    :cond_25
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 340
    .restart local v27    # "hasRegistered":Z
    :cond_26
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 343
    .restart local v19    # "hasDeregistered":Z
    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 347
    .restart local v12    # "hasCdmaDataConnectionAttached":Z
    :cond_28
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 351
    .restart local v14    # "hasCdmaDataConnectionDetached":Z
    :cond_29
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 354
    .restart local v13    # "hasCdmaDataConnectionChanged":Z
    :cond_2a
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 357
    .restart local v28    # "hasVoiceRadioTechnologyChanged":Z
    :cond_2b
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 360
    .restart local v16    # "hasDataRadioTechnologyChanged":Z
    :cond_2c
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 363
    .restart local v15    # "hasChanged":Z
    :cond_2d
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 373
    .restart local v17    # "hasDataRoamingOff":Z
    .restart local v18    # "hasDataRoamingOn":Z
    .restart local v30    # "isValidPrevRoam":Z
    .restart local v36    # "prevDataRoaming":Z
    .restart local v37    # "prevIntlRoaming":Z
    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 375
    :cond_2f
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 380
    :cond_30
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 382
    .restart local v24    # "hasLocationChanged":Z
    :cond_31
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 389
    .restart local v11    # "has4gHandoff":Z
    :cond_32
    const/16 v26, 0x0

    goto/16 :goto_d

    .line 395
    .restart local v26    # "hasMultiApnSupport":Z
    :cond_33
    const/16 v25, 0x0

    goto/16 :goto_e

    .line 399
    .restart local v25    # "hasLostMultiApnSupport":Z
    :cond_34
    const/16 v33, 0x0

    goto/16 :goto_f

    .line 465
    .restart local v9    # "eriText":Ljava/lang/String;
    .restart local v33    # "needNotifyData":Z
    .restart local v42    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v45    # "tss":Landroid/telephony/ServiceState;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_37

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v47, v0

    if-eqz v47, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v9

    .line 467
    :goto_1b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_a

    .line 470
    const-string v47, "ro.cdma.home.operator.alpha"

    invoke-static/range {v47 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_10

    .line 466
    :cond_36
    const/4 v9, 0x0

    goto :goto_1b

    .line 472
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v47

    if-eqz v47, :cond_a

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v47

    const v48, 0x1040095

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_10

    .line 527
    .end local v9    # "eriText":Ljava/lang/String;
    .restart local v35    # "operatorNumeric":Ljava/lang/String;
    .restart local v38    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v41    # "sid":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.operator.numeric"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "CDMA SST Set PROPERTY_OPERATOR_NUMERIC to operatorNumeric = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 543
    :cond_39
    const-string v31, ""

    .line 544
    .local v31, "isoCountryCode":Ljava/lang/String;
    const/16 v47, 0x0

    const/16 v48, 0x3

    move-object/from16 v0, v35

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 546
    .local v32, "mcc":Ljava/lang/String;
    const/16 v47, 0x0

    const/16 v48, 0x3

    :try_start_1
    move-object/from16 v0, v35

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    invoke-static/range {v47 .. v47}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v31

    .line 554
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    const-string v48, "gsm.operator.iso-country"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 557
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsoCountryCode:Ljava/lang/String;

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v47

    invoke-static/range {v47 .. v47}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v34

    .line 562
    .local v34, "networkTypeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v47

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v31

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setupAssitDialingAndHBPCD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v35

    move-object/from16 v3, v38

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v47

    if-eqz v47, :cond_d

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 548
    .end local v34    # "networkTypeString":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 549
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "countryCodeForMcc error"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 550
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    .line 551
    .local v10, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "countryCodeForMcc error"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 571
    .end local v10    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v31    # "isoCountryCode":Ljava/lang/String;
    .end local v32    # "mcc":Ljava/lang/String;
    :cond_3a
    const-string v47, "false"

    goto/16 :goto_13

    .line 580
    :cond_3b
    const-string v47, "false"

    goto/16 :goto_14

    .line 641
    .end local v35    # "operatorNumeric":Ljava/lang/String;
    .end local v38    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v41    # "sid":I
    .restart local v8    # "dataChangedReason":Ljava/lang/String;
    .restart local v20    # "hasDomesticRoamingOff":Z
    .restart local v21    # "hasDomesticRoamingOn":Z
    .restart local v22    # "hasInterRoamingOff":Z
    .restart local v23    # "hasInterRoamingOn":Z
    :cond_3c
    const/16 v21, 0x0

    goto/16 :goto_15

    .line 645
    :cond_3d
    const/16 v23, 0x0

    goto/16 :goto_16

    .line 648
    :cond_3e
    const/16 v20, 0x0

    goto/16 :goto_17

    .line 650
    :cond_3f
    const/16 v22, 0x0

    goto/16 :goto_18

    .line 699
    .end local v20    # "hasDomesticRoamingOff":Z
    .end local v21    # "hasDomesticRoamingOn":Z
    .end local v22    # "hasInterRoamingOff":Z
    .end local v23    # "hasInterRoamingOn":Z
    .restart local v5    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v7    # "cil":Landroid/telephony/CellInfoLte;
    :cond_40
    const/4 v6, 0x0

    goto/16 :goto_19

    .line 703
    .restart local v6    # "cidChanged":Z
    .restart local v43    # "timeStamp":J
    :cond_41
    const/16 v39, 0x0

    goto/16 :goto_1a

    .line 717
    .end local v6    # "cidChanged":Z
    .end local v7    # "cil":Landroid/telephony/CellInfoLte;
    .end local v43    # "timeStamp":J
    :catchall_0
    move-exception v47

    :try_start_2
    monitor-exit v48
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v47
.end method

.method protected updatePhoneObject()V
    .locals 2

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 861
    .local v0, "voiceRat":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 862
    const/4 v0, 0x6

    .line 864
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->updatePhoneObject(I)V

    .line 865
    return-void
.end method
