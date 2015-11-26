.class public Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;
.super Ljava/lang/Object;
.source "VzwMoSmsSupportHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "VzwMoSmsSupportHelper"

.field private static final sForceNBPCDDisabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVZWNetworkOperatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVZWSimcardOperatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCdmaHomeOperatorIsnan:Z

.field private final mGsmRoutesUsSmsc:Z

.field private mNbpcdSupported:Z

.field private mNetworkOperator:Ljava/lang/String;

.field private mPhoneType:I

.field private mSimOperator:Ljava/lang/String;

.field private mSimState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->DBG:Ljava/lang/Boolean;

    .line 114
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "45429"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sForceNBPCDDisabledList:Ljava/util/List;

    .line 169
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "20404"

    aput-object v1, v0, v2

    const-string v1, "311480"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWSimcardOperatorList:Ljava/util/List;

    .line 176
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "310004"

    aput-object v1, v0, v2

    const-string v1, "310005"

    aput-object v1, v0, v3

    const-string v1, "310012"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "311480"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWNetworkOperatorList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneType"    # I
    .param p2, "simState"    # I
    .param p3, "simOperator"    # Ljava/lang/String;
    .param p4, "networkOperator"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, "ro.cdma.home.operator.isnan"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mCdmaHomeOperatorIsnan:Z

    .line 121
    const-string v0, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mGsmRoutesUsSmsc:Z

    .line 126
    iput p1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    .line 127
    iput p2, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimState:I

    .line 128
    invoke-static {p3}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->deNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimOperator:Ljava/lang/String;

    .line 129
    invoke-static {p4}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->deNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    .line 134
    sget-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sForceNBPCDDisabledList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "VzwMoSmsSupportHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force NBPCD disabled for networkOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    .line 139
    :cond_0
    return-void
.end method

.method private static final deNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private needToDo()Z
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsCDMA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mCdmaHomeOperatorIsnan:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsGSM()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mGsmRoutesUsSmsc:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->simcardIsVZW()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final networkIsVZW()Z
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWNetworkOperatorList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final phoneTypeIsCDMA()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final phoneTypeIsGSM()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    iget v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final simcardIsVZW()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->sVZWSimcardOperatorList:Ljava/util/List;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimOperator:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public filterDestAddr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destAddr"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v1, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter filterDestAddr. this="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", destAddr=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 226
    :cond_1
    sget-object v1, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destAddr"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " is not a global phone number!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, p2

    .line 260
    .end local p2    # "destAddr":Ljava/lang/String;
    .local v6, "destAddr":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 231
    .end local v6    # "destAddr":Ljava/lang/String;
    .restart local p2    # "destAddr":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->needToDo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->getNetworkType()I

    move-result v5

    .line 233
    .local v5, "networkType":I
    const/4 v1, -0x1

    if-eq v5, v1, :cond_4

    .line 234
    new-instance v7, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;-><init>(Ljava/lang/String;)V

    .line 235
    .local v7, "mmp":Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->getMCC()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "networkMcc":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;->getMNC()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "networkMnc":Ljava/lang/String;
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "networkMcc=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\", networkMnc=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    const-string v1, "VzwMoSmsSupportHelper"

    const-string v4, "begin to call SMSNumberHandler.formatNumber;"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/motorola/android/internal/telephony/SMSNumberHandler;

    invoke-direct {v0, p1}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "npl":Lcom/motorola/android/internal/telephony/SMSNumberHandler;
    iget-boolean v4, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/SMSNumberHandler;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p2

    .line 255
    .end local v0    # "npl":Lcom/motorola/android/internal/telephony/SMSNumberHandler;
    .end local v2    # "networkMcc":Ljava/lang/String;
    .end local v3    # "networkMnc":Ljava/lang/String;
    .end local v5    # "networkType":I
    .end local v7    # "mmp":Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper$MccMncPair;
    :cond_4
    sget-object v1, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 256
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v6, p2

    .line 260
    .end local p2    # "destAddr":Ljava/lang/String;
    .restart local v6    # "destAddr":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getNetworkType()I
    .locals 4

    .prologue
    .line 185
    const/4 v0, -0x1

    .line 187
    .local v0, "networkType":I
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsGSM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->phoneTypeIsCDMA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->networkIsVZW()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 196
    :cond_2
    const-string v1, "VzwMoSmsSupportHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warning! unknown mPhoneType value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VzwMoSmsSupportHelper : { mPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSimState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSimOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mSimOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNetworkOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNbpcdSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mNbpcdSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCdmaHomeOperatorIsnan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mCdmaHomeOperatorIsnan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGsmRoutesUsSmsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->mGsmRoutesUsSmsc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; getNetworkType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
