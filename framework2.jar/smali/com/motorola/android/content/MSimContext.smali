.class public Lcom/motorola/android/content/MSimContext;
.super Landroid/content/ContextWrapper;
.source "MSimContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MSimContext"

.field private static final SUB_ID_0:I


# instance fields
.field private mContextOriginal:Landroid/content/Context;

.field private mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mSimContextArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "originalContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    .line 141
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    .line 143
    iput-object p1, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    .line 145
    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 147
    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    const-string v5, "phone_msim"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/MSimTelephonyManager;

    iput-object v4, p0, Lcom/motorola/android/content/MSimContext;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 156
    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 157
    .local v2, "originalConfig":Landroid/content/res/Configuration;
    const-string v4, "MSimContext"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    const-string v4, "MSimContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating the MSimContext for Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v4, "MSimContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of Subscriptions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/motorola/android/content/MSimContext;->getNumOfSubs()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " original configuration obj ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/content/MSimContext;->isMultiSimPhone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    const/4 v3, 0x0

    .local v3, "subscriptionID":I
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/content/MSimContext;->getNumOfSubs()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 170
    invoke-direct {p0, v2, v3}, Lcom/motorola/android/content/MSimContext;->createNewPlmnConfiguration(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 173
    .local v0, "newSimConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 174
    .local v1, "newSimContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    const-string v4, "MSimContext"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v5, "MSimContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubId("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") Configuration ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "newSimConfig":Landroid/content/res/Configuration;
    .end local v1    # "newSimContext":Landroid/content/Context;
    .end local v3    # "subscriptionID":I
    :cond_2
    iget-object v4, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    :cond_3
    return-void
.end method

.method private createNewPlmnConfiguration(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "originalConfig"    # Landroid/content/res/Configuration;
    .param p2, "subId"    # I

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/motorola/android/content/MSimContext;->getSimPlmn(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "plmn":Ljava/lang/String;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 51
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v1}, Lcom/motorola/android/content/MSimContext;->getMcc(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 52
    invoke-direct {p0, v1}, Lcom/motorola/android/content/MSimContext;->getMnc(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->mnc:I

    .line 53
    return-object v0
.end method

.method private getMcc(Ljava/lang/String;)I
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MSimContext"

    const-string v3, "Error parsing plmn for Mcc"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMnc(Ljava/lang/String;)I
    .locals 4
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MSimContext"

    const-string v3, "Error parsing plmn for Mnc"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNumOfSubs()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "MSimContext"

    const-string v1, "MSimContext getNumOfSubs called while mMSimTelephonyManager is NULL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method private getSimContext(I)Landroid/content/Context;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 99
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/motorola/android/content/MSimContext;->getNumOfSubs()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 100
    :cond_0
    const-string v0, "MSimContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimContext: Invalid SubscriptionID in getSimContext("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Returning the original Context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    .line 105
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/android/content/MSimContext;->updateSimConfiguration(I)V

    .line 105
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method private getSimPlmn(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 246
    const-string v0, "MSimContext"

    const-string v1, "MSimContext getSimPlmn called while mTelephonyManager is NULL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, ""

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isMultiSimPhone()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "MSimContext"

    const-string v1, "MSimContext isMultiSim called while mMSimTelephonyManager is NULL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/content/MSimContext;->mMSimTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized updateSimConfiguration(I)V
    .locals 13
    .param p1, "subId"    # I

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 203
    .local v8, "originalConfig":Landroid/content/res/Configuration;
    iget-object v10, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 204
    .local v1, "copyConfig":Landroid/content/res/Configuration;
    invoke-virtual {v8, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 205
    .local v0, "configDelta":I
    const-string v10, "MSimContext"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 206
    const-string v10, "MSimContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSimConfiguration("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") delta: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    if-eqz v0, :cond_3

    .line 215
    invoke-direct {p0, p1}, Lcom/motorola/android/content/MSimContext;->getSimPlmn(I)Ljava/lang/String;

    move-result-object v9

    .line 216
    .local v9, "plmn":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/motorola/android/content/MSimContext;->getMcc(Ljava/lang/String;)I

    move-result v4

    .line 217
    .local v4, "newSimMcc":I
    invoke-direct {p0, v9}, Lcom/motorola/android/content/MSimContext;->getMnc(Ljava/lang/String;)I

    move-result v5

    .line 218
    .local v5, "newSimMnc":I
    iget v6, v1, Landroid/content/res/Configuration;->mcc:I

    .line 219
    .local v6, "oldSimMcc":I
    iget v7, v1, Landroid/content/res/Configuration;->mnc:I

    .line 221
    .local v7, "oldSimMnc":I
    if-ne v4, v6, :cond_1

    if-ne v5, v7, :cond_1

    const/4 v10, 0x2

    if-eq v0, v10, :cond_3

    .line 223
    :cond_1
    invoke-direct {p0, v8, p1}, Lcom/motorola/android/content/MSimContext;->createNewPlmnConfiguration(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 224
    .local v3, "newSimConfig":Landroid/content/res/Configuration;
    iget-object v10, p0, Lcom/motorola/android/content/MSimContext;->mContextOriginal:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 225
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v10, "MSimContext"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 226
    const-string v10, "MSimContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SubId("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") current Config ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v10, "MSimContext"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating SubId("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") with new Configuration ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    iget-object v10, p0, Lcom/motorola/android/content/MSimContext;->mSimContextArray:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "newSimConfig":Landroid/content/res/Configuration;
    .end local v4    # "newSimMcc":I
    .end local v5    # "newSimMnc":I
    .end local v6    # "oldSimMcc":I
    .end local v7    # "oldSimMnc":I
    .end local v9    # "plmn":Ljava/lang/String;
    :cond_3
    monitor-exit p0

    return-void

    .line 202
    .end local v0    # "configDelta":I
    .end local v1    # "copyConfig":Landroid/content/res/Configuration;
    .end local v8    # "originalConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method public getResources(I)Landroid/content/res/Resources;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/motorola/android/content/MSimContext;->getSimContext(I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
