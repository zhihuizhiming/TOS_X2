.class public Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;
.super Ljava/lang/Object;
.source "OemLteTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OEM_RIL_LTE_Profile"
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x109

.field public static final MOT_QMI_SPRINT_DS_PROFILE_MAX_PASSWD_LEN_V01:I = 0x40

.field public static final MOT_QMI_SPRINT_DS_PROFILE_MAX_PROFILE_NAME_LEN_V01:I = 0xa

.field public static final MOT_QMI_SPRINT_DS_PROFILE_MAX_USRNAME_LEN_V01:I = 0x40


# instance fields
.field public apnName:Ljava/lang/String;

.field public apnNameValid:Z

.field public authType:I

.field public authTypeValid:Z

.field public inactiveTimerVal:I

.field public inactiveTimerValValid:Z

.field public password:Ljava/lang/String;

.field public passwordValid:Z

.field public pdnType:I

.field public pdnTypeValid:Z

.field public profileName:Ljava/lang/String;

.field public profileNameValid:Z

.field public ratType:I

.field public ratTypeValid:Z

.field public userName:Ljava/lang/String;

.field public userNameValid:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;ZIZIZIZIZLjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "profileNameValid"    # Z
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "apnNameValid"    # Z
    .param p4, "apnName"    # Ljava/lang/String;
    .param p5, "pdnTypeValid"    # Z
    .param p6, "pdnType"    # I
    .param p7, "ratTypeValid"    # Z
    .param p8, "ratType"    # I
    .param p9, "inactiveTimerValValid"    # Z
    .param p10, "inactiveTimerVal"    # I
    .param p11, "authTypeValid"    # Z
    .param p12, "authType"    # I
    .param p13, "userNameValid"    # Z
    .param p14, "userName"    # Ljava/lang/String;
    .param p15, "passwordValid"    # Z
    .param p16, "password"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->profileNameValid:Z

    .line 291
    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->profileName:Ljava/lang/String;

    .line 292
    iput-boolean p3, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->apnNameValid:Z

    .line 293
    iput-object p4, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->apnName:Ljava/lang/String;

    .line 294
    iput-boolean p5, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->pdnTypeValid:Z

    .line 295
    iput p6, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->pdnType:I

    .line 296
    iput-boolean p7, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->ratTypeValid:Z

    .line 297
    iput p8, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->ratType:I

    .line 298
    iput-boolean p9, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->inactiveTimerValValid:Z

    .line 299
    iput p10, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->inactiveTimerVal:I

    .line 300
    iput-boolean p11, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->authTypeValid:Z

    .line 301
    iput p12, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->authType:I

    .line 302
    iput-boolean p13, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->userNameValid:Z

    .line 303
    iput-object p14, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->userName:Ljava/lang/String;

    .line 304
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->passwordValid:Z

    .line 305
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->password:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public static newFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;
    .locals 23
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 309
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 310
    .local v3, "pnv":Z
    :goto_0
    const/16 v2, 0xa

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 311
    .local v21, "pn_":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 312
    invoke-static/range {v21 .. v21}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "pn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    .line 315
    .local v5, "anv":Z
    :goto_1
    const/16 v2, 0x67

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 317
    .local v19, "an_":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 318
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "an":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    .line 321
    .local v7, "ptv":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 323
    .local v8, "pt":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    .line 324
    .local v9, "rtv":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 326
    .local v10, "rt":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v11, 0x1

    .line 327
    .local v11, "itvv":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 329
    .local v12, "itv":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 330
    .local v13, "atv":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 332
    .local v14, "at":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v15, 0x1

    .line 333
    .local v15, "unv":Z
    :goto_6
    const/16 v2, 0x40

    new-array v0, v2, [B

    move-object/from16 v22, v0

    .line 334
    .local v22, "un_":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 335
    invoke-static/range {v22 .. v22}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v16

    .line 337
    .local v16, "un":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eqz v2, :cond_7

    const/16 v17, 0x1

    .line 338
    .local v17, "pv":Z
    :goto_7
    const/16 v2, 0x40

    new-array v0, v2, [B

    move-object/from16 v20, v0

    .line 339
    .local v20, "p_":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 340
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$OemCdmaDataConverter;->byteArrToString([B)Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, "p":Ljava/lang/String;
    new-instance v2, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;

    invoke-direct/range {v2 .. v18}, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;-><init>(ZLjava/lang/String;ZLjava/lang/String;ZIZIZIZIZLjava/lang/String;ZLjava/lang/String;)V

    return-object v2

    .line 309
    .end local v3    # "pnv":Z
    .end local v4    # "pn":Ljava/lang/String;
    .end local v5    # "anv":Z
    .end local v6    # "an":Ljava/lang/String;
    .end local v7    # "ptv":Z
    .end local v8    # "pt":I
    .end local v9    # "rtv":Z
    .end local v10    # "rt":I
    .end local v11    # "itvv":Z
    .end local v12    # "itv":I
    .end local v13    # "atv":Z
    .end local v14    # "at":I
    .end local v15    # "unv":Z
    .end local v16    # "un":Ljava/lang/String;
    .end local v17    # "pv":Z
    .end local v18    # "p":Ljava/lang/String;
    .end local v19    # "an_":[B
    .end local v20    # "p_":[B
    .end local v21    # "pn_":[B
    .end local v22    # "un_":[B
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 314
    .restart local v3    # "pnv":Z
    .restart local v4    # "pn":Ljava/lang/String;
    .restart local v21    # "pn_":[B
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 320
    .restart local v5    # "anv":Z
    .restart local v6    # "an":Ljava/lang/String;
    .restart local v19    # "an_":[B
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 323
    .restart local v7    # "ptv":Z
    .restart local v8    # "pt":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 326
    .restart local v9    # "rtv":Z
    .restart local v10    # "rt":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    .line 329
    .restart local v11    # "itvv":Z
    .restart local v12    # "itv":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 332
    .restart local v13    # "atv":Z
    .restart local v14    # "at":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_6

    .line 337
    .restart local v15    # "unv":Z
    .restart local v16    # "un":Ljava/lang/String;
    .restart local v22    # "un_":[B
    :cond_7
    const/16 v17, 0x0

    goto :goto_7
.end method


# virtual methods
.method serialize(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->profileNameValid:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 351
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->profileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 352
    .local v0, "elem":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 353
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0xa

    new-array v1, v2, [B

    .line 354
    .local v1, "pad":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 356
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->apnNameValid:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 357
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->apnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 358
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 359
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x67

    new-array v1, v2, [B

    .line 362
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 364
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->pdnTypeValid:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 365
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->pdnType:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 367
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->ratTypeValid:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 368
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->ratType:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 370
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->inactiveTimerValValid:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 371
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->inactiveTimerVal:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 373
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->authTypeValid:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_5
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 374
    iget v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->authType:I

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 376
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->userNameValid:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_6
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 377
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->userName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 378
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 379
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x40

    new-array v1, v2, [B

    .line 380
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 382
    iget-boolean v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->passwordValid:Z

    if-eqz v2, :cond_7

    :goto_7
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 383
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 384
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 385
    array-length v2, v0

    rsub-int/lit8 v2, v2, 0x40

    new-array v1, v2, [B

    .line 386
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 387
    return-void

    .end local v0    # "elem":[B
    .end local v1    # "pad":[B
    :cond_0
    move v2, v4

    .line 350
    goto/16 :goto_0

    .restart local v0    # "elem":[B
    .restart local v1    # "pad":[B
    :cond_1
    move v2, v4

    .line 356
    goto :goto_1

    :cond_2
    move v2, v4

    .line 364
    goto :goto_2

    :cond_3
    move v2, v4

    .line 367
    goto :goto_3

    :cond_4
    move v2, v4

    .line 370
    goto :goto_4

    :cond_5
    move v2, v4

    .line 373
    goto :goto_5

    :cond_6
    move v2, v4

    .line 376
    goto :goto_6

    :cond_7
    move v3, v4

    .line 382
    goto :goto_7
.end method

.method size()I
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->profileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->apnName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->userName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/OemLteTelephonyManager$OEM_RIL_LTE_Profile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
