.class public Lcom/motorola/android/internal/telephony/OperatorEntryManager;
.super Ljava/lang/Object;
.source "OperatorEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OperatorEntryManager"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/motorola/android/internal/telephony/OperatorEntryManager;


# instance fields
.field private isCarrierNumericAvailable:Z

.field private isFileLoaded:Z

.field private mOperatorInfo:Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isFileLoaded:Z

    .line 30
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isCarrierNumericAvailable:Z

    .line 52
    sput-object p1, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mContext:Landroid/content/Context;

    .line 53
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isFileLoaded:Z

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->loadCarrierMccMncFileFromXml()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isFileLoaded:Z

    .line 57
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/OperatorEntryManager;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mInstance:Lcom/motorola/android/internal/telephony/OperatorEntryManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 61
    new-instance v0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mInstance:Lcom/motorola/android/internal/telephony/OperatorEntryManager;

    .line 65
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mInstance:Lcom/motorola/android/internal/telephony/OperatorEntryManager;

    return-object v0

    .line 62
    :cond_1
    if-eqz p0, :cond_0

    .line 63
    sput-object p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private loadCarrierMccMncFileFromXml()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 69
    sget-object v8, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 70
    .local v7, "r":Landroid/content/res/Resources;
    const-string v8, "ro.carrier"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "carrier":Ljava/lang/String;
    const-string v8, "unknown"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 72
    const-string v8, "loadCarrierMccMncFileFromXml ro.carrier is unknown"

    invoke-direct {p0, v8}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const v8, 0x1070045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "operatorArray":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v8, v4

    if-nez v8, :cond_3

    .line 78
    :cond_2
    const-string v8, "Carrier mcc mnc is empty."

    invoke-direct {p0, v8}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 83
    .local v6, "operatorStr":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "operatorEntry":[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 86
    const-string v8, "OperatorEntryManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error Parsing Carrier_MccMnc: operatorStr:  has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " elements."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_5
    aget-object v8, v5, v11

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Carrier MCC MNC File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    .line 90
    new-instance v8, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;

    aget-object v9, v5, v11

    aget-object v10, v5, v12

    invoke-direct {v8, p0, v9, v10}, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;-><init>(Lcom/motorola/android/internal/telephony/OperatorEntryManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mOperatorInfo:Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;

    .line 91
    iput-boolean v12, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isCarrierNumericAvailable:Z

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "OperatorEntryManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method


# virtual methods
.method public isCarrierMccMncAvailable()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isCarrierNumericAvailable:Z

    return v0
.end method

.method public isHomeSimOperator(Ljava/lang/String;)Z
    .locals 8
    .param p1, "simNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isCarrierNumericAvailable:Z

    if-nez v6, :cond_2

    .line 100
    :cond_0
    const-string v6, "isHomeSimOperator, no carrier available in MccMnc Xml file. "

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    .line 115
    :cond_1
    :goto_0
    return v5

    .line 103
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHomeSimOperator simNumeric is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->mOperatorInfo:Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;

    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->getOperatorNumericArray()[Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "simNumericArray":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 108
    .local v3, "numeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numeric "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simNumeric is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " numeric "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->log(Ljava/lang/String;)V

    .line 111
    const/4 v5, 0x1

    goto :goto_0

    .line 107
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
