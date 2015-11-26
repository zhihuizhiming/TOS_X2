.class public final Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;
.super Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.source "GsmNumberHandleForAssistedDialing.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>()V

    .line 19
    const-string v0, "GsmNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;

    .prologue
    .line 56
    move-object/from16 v6, p1

    .line 57
    .local v6, "manipulatedNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 70
    .local v7, "numLength":I
    const-string v4, ""

    .line 73
    .local v4, "areaCode":Ljava/lang/String;
    sget-object v23, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v23

    .line 74
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "cur_country_idd"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "otaIdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "cur_country_ndd"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, "otaNdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "cur_country_code"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "otaCC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "ref_country_idd"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 80
    .local v16, "refIdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "ref_country_ndd"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 81
    .local v19, "refNdd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "ref_country_code"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "refCC":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "ref_country_mcc"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 84
    .local v18, "refMcc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "cur_country_updated_by_user"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 88
    .local v5, "areaCodeUpdated":I
    if-eqz v5, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    const-string v24, "ref_country_area_code"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    :cond_0
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-nez v5, :cond_1

    .line 95
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getAreaCode(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_1
    if-nez v10, :cond_2

    const-string v10, ""

    .line 110
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 112
    .local v11, "otaIddLength":I
    if-nez v12, :cond_3

    const-string v12, ""

    .line 113
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 115
    .local v13, "otaNddLength":I
    if-nez v8, :cond_4

    const-string v8, ""

    .line 116
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 118
    .local v9, "otaCCLength":I
    if-nez v16, :cond_5

    const-string v16, ""

    .line 119
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 121
    .local v17, "refIddLength":I
    if-nez v19, :cond_6

    const-string v19, ""

    .line 122
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    .line 124
    .local v20, "refNddLength":I
    if-nez v14, :cond_7

    const-string v14, ""

    .line 125
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 127
    .local v15, "refCCLength":I
    if-nez v4, :cond_8

    const-string v4, ""

    .line 129
    :cond_8
    const-string v22, "011"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v21

    .line 131
    .local v21, "usIddLength":I
    if-eqz v7, :cond_9

    .line 137
    move/from16 v0, v17

    if-lt v7, v0, :cond_b

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 139
    const-string v22, "+"

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    :cond_9
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 187
    const/4 v6, 0x0

    .line 190
    :cond_a
    return-object v6

    .line 92
    .end local v5    # "areaCodeUpdated":I
    .end local v8    # "otaCC":Ljava/lang/String;
    .end local v9    # "otaCCLength":I
    .end local v10    # "otaIdd":Ljava/lang/String;
    .end local v11    # "otaIddLength":I
    .end local v12    # "otaNdd":Ljava/lang/String;
    .end local v13    # "otaNddLength":I
    .end local v14    # "refCC":Ljava/lang/String;
    .end local v15    # "refCCLength":I
    .end local v16    # "refIdd":Ljava/lang/String;
    .end local v17    # "refIddLength":I
    .end local v18    # "refMcc":I
    .end local v19    # "refNdd":Ljava/lang/String;
    .end local v20    # "refNddLength":I
    .end local v21    # "usIddLength":I
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 144
    .restart local v5    # "areaCodeUpdated":I
    .restart local v8    # "otaCC":Ljava/lang/String;
    .restart local v9    # "otaCCLength":I
    .restart local v10    # "otaIdd":Ljava/lang/String;
    .restart local v11    # "otaIddLength":I
    .restart local v12    # "otaNdd":Ljava/lang/String;
    .restart local v13    # "otaNddLength":I
    .restart local v14    # "refCC":Ljava/lang/String;
    .restart local v15    # "refCCLength":I
    .restart local v16    # "refIdd":Ljava/lang/String;
    .restart local v17    # "refIddLength":I
    .restart local v18    # "refMcc":I
    .restart local v19    # "refNdd":Ljava/lang/String;
    .restart local v20    # "refNddLength":I
    .restart local v21    # "usIddLength":I
    :cond_b
    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLongNumber(ILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 146
    const-string v22, "+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 154
    :cond_c
    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const-string v22, "1"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    move/from16 v0, v20

    if-lt v7, v0, :cond_e

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 158
    move/from16 v0, v21

    if-lt v7, v0, :cond_d

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const-string v23, "011"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 160
    const-string v22, "+"

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 162
    :cond_d
    const-string v22, "+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 168
    :cond_e
    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidNDDLongNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 170
    const-string v22, "+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 177
    :cond_f
    const-string v22, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isValidLocalNumber(ILjava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 179
    const-string v22, "+"

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method protected getManipulatedNumberWithoutPostDial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sourceNumber"    # Ljava/lang/String;
    .param p2, "byWhom"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v2, "cur_country_mcc"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
