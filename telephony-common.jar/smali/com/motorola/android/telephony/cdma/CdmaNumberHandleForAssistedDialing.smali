.class public final Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
.super Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.source "CdmaNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "CdmaNumberHandleForAssistedDialing"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>()V

    .line 24
    return-void
.end method

.method private manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;
    .param p3, "isNBPCDAllowed"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 70
    move-object v1, p1

    .line 71
    .local v1, "manipulatedNumber":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 72
    .local v2, "numLength":I
    if-eqz v2, :cond_6

    .line 75
    if-nez p3, :cond_2

    .line 76
    const-string v3, "011"

    invoke-virtual {p0, p1, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->checkAndProcessNonLeadingPlusCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    if-nez v1, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 233
    :goto_0
    return-object v3

    .line 82
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    const-string v3, "011"

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v3, v1

    .line 86
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasPlusCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const/4 v3, 0x0

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->hasSpecialChar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    const/4 v3, 0x0

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 100
    if-nez p3, :cond_6

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "converted":Z
    const/16 v3, 0xc

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->isNANPFormat(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    const/4 v0, 0x1

    .line 112
    :cond_5
    if-nez v0, :cond_6

    .line 113
    const-string v3, "011"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .end local v0    # "converted":Z
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 230
    const/4 v1, 0x0

    :cond_7
    move-object v3, v1

    .line 233
    goto :goto_0

    .line 118
    :cond_8
    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 122
    :cond_9
    const/16 v3, 0xb

    if-lt v2, v3, :cond_6

    .line 126
    const-string v3, "BY_DIALER"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 128
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 130
    if-eqz p3, :cond_a

    .line 131
    const-string v3, "+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 133
    :cond_a
    const-string v3, "011"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 138
    :cond_b
    const-string v3, "BY_CONTACT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 141
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 144
    const/16 v3, 0xb

    if-ne v2, v3, :cond_d

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 146
    if-eqz p3, :cond_c

    .line 147
    const-string v3, "+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 149
    :cond_c
    const-string v3, "011"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 153
    :cond_d
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 157
    :cond_f
    if-eqz p3, :cond_10

    .line 158
    const-string v3, "+"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 160
    :cond_10
    const-string v3, "011"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 164
    :cond_11
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 169
    :cond_12
    if-eqz p3, :cond_13

    .line 170
    const-string v3, "+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 172
    :cond_13
    const-string v3, "011"

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 176
    :cond_14
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x5

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 181
    :cond_15
    if-eqz p3, :cond_16

    .line 182
    const-string v3, "+"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 184
    :cond_16
    const-string v3, "011"

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 188
    :cond_17
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x6

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x5

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 193
    :cond_18
    if-eqz p3, :cond_19

    .line 194
    const-string v3, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 196
    :cond_19
    const-string v3, "011"

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 200
    :cond_1a
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x7

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x6

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v3, 0x5

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 205
    :cond_1b
    if-eqz p3, :cond_1c

    .line 206
    const-string v3, "+"

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 208
    :cond_1c
    const-string v3, "011"

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 212
    :cond_1d
    const/4 v3, 0x5

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidIDD(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x5

    const/4 v4, 0x6

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    :cond_1e
    if-eqz p3, :cond_1f

    .line 218
    const-string v3, "+"

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 220
    :cond_1f
    const-string v3, "011"

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    .line 36
    .local v0, "isNBPCDAllowed":Z
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v3, "cur_country_mcc"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 48
    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "us"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "pr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "vi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    const-string v2, "gu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
