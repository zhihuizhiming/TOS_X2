.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 101
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 102
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 103
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 104
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 13
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    const v12, 0x104008a

    const v11, 0x1040088

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 287
    const/4 v5, 0x0

    .line 289
    .local v5, "showSpnForRoamIndOff":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11100b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 295
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v6, :cond_1

    .line 296
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 297
    .local v1, "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_1

    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "eriText":Ljava/lang/String;
    if-eqz v5, :cond_0

    if-ne p1, v8, :cond_0

    .line 301
    const-string v6, "gsm.sim.operator.alpha"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v7, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    invoke-direct {v3, p0, v6, v7, v2}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .local v3, "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    move-object v4, v3

    .line 490
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2    # "eriText":Ljava/lang/String;
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .local v4, "ret":Ljava/lang/Object;
    :goto_2
    return-object v4

    .line 303
    .end local v4    # "ret":Ljava/lang/Object;
    .restart local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .restart local v2    # "eriText":Ljava/lang/String;
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    goto :goto_1

    .line 314
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v2    # "eriText":Ljava/lang/String;
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 411
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-nez v6, :cond_3

    .line 413
    const-string v6, "CDMA"

    const-string v7, "ERI File not loaded"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-le p2, v10, :cond_2

    .line 416
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v10, v8, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_3
    move-object v4, v3

    .line 490
    .restart local v4    # "ret":Ljava/lang/Object;
    goto :goto_2

    .line 317
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .end local v4    # "ret":Ljava/lang/Object;
    :pswitch_0
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v9, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 321
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 324
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040089

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v8, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 328
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 331
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v10, v8, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 335
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 340
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x104008b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 344
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 347
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x104008c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 351
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 354
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x104008d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 358
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 361
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x104008e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 365
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_3

    .line 368
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x104008f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 372
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 375
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040090

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 379
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 382
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040091

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 386
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 389
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040092

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 393
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 396
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040093

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 400
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 403
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040094

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, p1, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 407
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 423
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    packed-switch p2, :pswitch_data_1

    .line 449
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v8, "ERI text"

    invoke-direct {v3, p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 425
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v9, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 430
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 433
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v7, 0x1040089

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v8, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 438
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 441
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v10, v8, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 446
    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 454
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 455
    .restart local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 456
    .local v0, "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_5

    .line 461
    if-nez v0, :cond_4

    .line 462
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERI defRoamInd "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found in ERI file ...on"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v9, v9, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 474
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v6, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v7, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v3, p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 481
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_5
    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v7, v1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v8, v1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {v3, p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_3

    .line 291
    .end local v0    # "defEriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v1    # "eriInfo":Lcom/android/internal/telephony/cdma/EriInfo;
    .end local v3    # "ret":Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .param p1, "roamingIndicator"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/EriInfo;

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 20

    .prologue
    .line 154
    const/4 v13, 0x0

    .line 155
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    .line 156
    .local v15, "stream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 159
    .local v14, "r":Landroid/content/res/Resources;
    :try_start_0
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: check for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v16, Ljava/io/FileInputStream;

    const v2, 0x10404b9

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 163
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 164
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: opened alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v15, v16

    .line 173
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :goto_0
    if-nez v13, :cond_0

    .line 174
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: open normal file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v2, 0x10f0003

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 179
    :cond_0
    :try_start_2
    const-string v2, "EriFile"

    invoke-static {v13, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "VersionNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "NumberOfEriEntries"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/16 v18, 0x0

    const-string v19, "EriFileType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 187
    const/4 v12, 0x0

    .line 189
    .local v12, "parsedEriEntries":I
    :cond_1
    :goto_1
    invoke-static {v13}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 190
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 191
    .local v11, "name":Ljava/lang/String;
    if-nez v11, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v12, v2, :cond_2

    .line 193
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " defined, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " parsed!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: eri parsing successful, file loaded"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_3

    .line 227
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 230
    :cond_3
    if-eqz v15, :cond_4

    .line 231
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 237
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    :cond_4
    :goto_2
    return-void

    .line 165
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v9

    .line 166
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: no alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v13, 0x0

    .line 171
    goto/16 :goto_0

    .line 168
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    .line 169
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    const-string v2, "CDMA"

    const-string v18, "loadEriFileFromXml: no parser for alternate file"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 196
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    :cond_5
    :try_start_4
    const-string v2, "CallPromptId"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 197
    const/4 v2, 0x0

    const-string v18, "Id"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 198
    .local v10, "id":I
    const/4 v2, 0x0

    const-string v18, "CallPromptText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 199
    .local v17, "text":Ljava/lang/String;
    if-ltz v10, :cond_7

    const/4 v2, 0x2

    if-gt v10, v2, :cond_7

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v17, v2, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 223
    .end local v10    # "id":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v17    # "text":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 224
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CDMA"

    const-string v18, "Got exception while loading ERI file."

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    instance-of v2, v13, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_6

    .line 227
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 230
    :cond_6
    if-eqz v15, :cond_4

    .line 231
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 233
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_2

    .line 202
    .restart local v10    # "id":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "text":Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v2, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Parsing ERI file: found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " CallPromptId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 226
    .end local v10    # "id":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v17    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v2

    instance-of v0, v13, Landroid/content/res/XmlResourceParser;

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 227
    check-cast v13, Landroid/content/res/XmlResourceParser;

    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->close()V

    .line 230
    :cond_8
    if-eqz v15, :cond_9

    .line 231
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 226
    :cond_9
    :goto_5
    throw v2

    .line 205
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parsedEriEntries":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a
    :try_start_9
    const-string v2, "EriInfo"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    const/4 v2, 0x0

    const-string v18, "RoamingIndicator"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "roamingIndicator":I
    const/4 v2, 0x0

    const-string v18, "IconIndex"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 209
    .local v4, "iconIndex":I
    const/4 v2, 0x0

    const-string v18, "IconMode"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 210
    .local v5, "iconMode":I
    const/4 v2, 0x0

    const-string v18, "EriText"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "eriText":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "CallPromptId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 213
    .local v7, "callPromptId":I
    const/4 v2, 0x0

    const-string v18, "AlertId"

    move-object/from16 v0, v18

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 214
    .local v8, "alertId":I
    add-int/lit8 v12, v12, 0x1

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v2, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 233
    .end local v3    # "roamingIndicator":I
    .end local v4    # "iconIndex":I
    .end local v5    # "iconMode":I
    .end local v6    # "eriText":Ljava/lang/String;
    .end local v7    # "callPromptId":I
    .end local v8    # "alertId":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parsedEriEntries":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v18

    goto :goto_5

    .line 168
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 165
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    .line 109
    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 494
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 498
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .param p1, "roamInd"    # I
    .param p2, "defRoamInd"    # I

    .prologue
    .line 502
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 124
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 127
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
