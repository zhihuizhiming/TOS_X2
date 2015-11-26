.class final Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
.super Ljava/lang/Object;
.source "VzwMoSmsSupportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MccMncPair"
.end annotation


# instance fields
.field private mMCC:Ljava/lang/String;

.field private mMNC:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->setByMccMnc(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    .line 65
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "mcc":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    .line 66
    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "mnc":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public final getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    return-object v0
.end method

.method public final getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    return-object v0
.end method

.method public final getMccMnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setByMccMnc(Ljava/lang/String;)V
    .locals 3
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    .line 71
    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 75
    const/4 v0, 0x3

    .line 76
    .local v0, "MCC_LEN":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    .line 81
    .end local v0    # "MCC_LEN":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MccMncPair : { MCC = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", MNC= \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->mMNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
