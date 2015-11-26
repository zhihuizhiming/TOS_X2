.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field protected mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    const/4 v5, 0x0

    .line 69
    const-string v1, "CdmaInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 61
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 70
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 71
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 72
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 73
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 373
    add-int/lit8 p1, p1, 0x4

    .line 374
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 375
    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 378
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 381
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v4

    .line 385
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 388
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "mimeType":Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private static isEmergencyMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 4
    .param p0, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v2, 0x1

    .line 398
    move-object v1, p0

    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 399
    .local v1, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 400
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 401
    .local v0, "message":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    .end local v0    # "message":Landroid/telephony/SmsCbMessage;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    .prologue
    .line 110
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "inEcm":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 99
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 101
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 102
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 16
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 313
    const/4 v12, 0x0

    .line 315
    .local v12, "index":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v14, v3, 0xff

    .line 316
    .local v14, "msgType":I
    if-eqz v14, :cond_0

    .line 317
    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 318
    const/4 v3, 0x1

    move v12, v13

    .line 358
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :goto_0
    return v3

    .line 320
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    aget-byte v3, p1, v13

    and-int/lit16 v10, v3, 0xff

    .line 321
    .local v10, "totalSegments":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v9, v3, 0xff

    .line 323
    .local v9, "segment":I
    if-lt v9, v10, :cond_1

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 325
    const/4 v3, 0x1

    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_0

    .line 329
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_1
    const/4 v15, 0x0

    .line 330
    .local v15, "sourcePort":I
    const/4 v5, 0x0

    .line 331
    .local v5, "destinationPort":I
    if-nez v9, :cond_2

    .line 333
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    aget-byte v3, p1, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v15, v3, 0x8

    .line 334
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v15, v3

    .line 335
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    aget-byte v3, p1, v13

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v5, v3, 0x8

    .line 336
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .restart local v13    # "index":I
    aget-byte v3, p1, v12

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v5, v3

    .line 339
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v3, :cond_2

    .line 340
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    add-int/lit8 v12, v13, 0x4

    .line 347
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v12

    new-array v2, v3, [B

    .line 353
    .local v2, "userData":[B
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v12

    move-object/from16 v0, p1

    invoke-static {v0, v12, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    new-instance v1, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-wide/from16 v3, p4

    move-object/from16 v7, p3

    move/from16 v8, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 358
    .local v1, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v3

    goto/16 :goto_0

    .end local v1    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v2    # "userData":[B
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_2
    move v12, v13

    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 286
    packed-switch p0, :pswitch_data_0

    .line 297
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 290
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 294
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 253
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 258
    .local v0, "causeCode":I
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 260
    if-nez v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 263
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 13
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 134
    .local v7, "enableCmasOnEcb":Z
    if-eqz v7, :cond_3

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isEmergencyMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    const-string v1, "CdmaSMSDispatcher.dispatchMessage(): CMAS on ECB mode"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .end local v7    # "enableCmasOnEcb":Z
    :cond_0
    move-object v10, p1

    .line 142
    check-cast v10, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 145
    .local v10, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    if-eqz v10, :cond_5

    .line 146
    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v9

    .line 147
    .local v9, "rawPdu":[B
    if-eqz v9, :cond_4

    .line 148
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rawPdu.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rawPdu= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexStringWithSpaceSep([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 160
    .end local v9    # "rawPdu":[B
    :cond_1
    :goto_0
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v0, v1, :cond_6

    move v8, v0

    .line 163
    .local v8, "isBroadcastType":Z
    :goto_1
    if-eqz v8, :cond_8

    .line 164
    const-string v1, "Broadcast type message"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v6

    .line 166
    .local v6, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v6, :cond_7

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 242
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .end local v8    # "isBroadcastType":Z
    .end local v10    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_2
    :goto_2
    return v0

    .line 137
    .restart local v7    # "enableCmasOnEcb":Z
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 153
    .end local v7    # "enableCmasOnEcb":Z
    .restart local v9    # "rawPdu":[B
    .restart local v10    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_4
    const-string v1, "warning! rawPdu is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v9    # "rawPdu":[B
    :cond_5
    const-string v1, "warning! sms is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 169
    .restart local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    .restart local v8    # "isBroadcastType":Z
    :cond_7
    const-string v1, "error trying to parse broadcast SMS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 175
    .end local v6    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :cond_8
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 183
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v11

    .line 185
    .local v11, "teleService":I
    sparse-switch v11, :sswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported teleservice 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x4

    goto :goto_2

    .line 190
    :sswitch_0
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v12

    .line 191
    .local v12, "voicemailCount":I
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->updateMessageWaitingIndicator(I)V

    goto :goto_2

    .line 198
    .end local v12    # "voicemailCount":I
    :sswitch_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    goto :goto_2

    .line 205
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 221
    :cond_a
    :sswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v1, v2, :cond_b

    .line 226
    const/4 v0, 0x3

    goto :goto_2

    .line 229
    :cond_b
    const/16 v1, 0x1004

    if-ne v1, v11, :cond_c

    .line 230
    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v1

    iget v2, v10, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_2

    .line 232
    :cond_c
    const v1, 0xfdea

    if-ne v1, v11, :cond_d

    .line 235
    invoke-virtual {v10, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v1

    iget v2, v10, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v0

    goto/16 :goto_2

    .line 242
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto/16 :goto_2

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_3
        0x1005 -> :sswitch_1
        0x1006 -> :sswitch_2
        0xfdea -> :sswitch_3
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 78
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 80
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->dispose()V

    .line 90
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 92
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 278
    return-void
.end method

.method public updateMessageWaitingIndicator(I)V
    .locals 4
    .param p1, "mwi"    # I

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "mIsHideWMIEnabled":I
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicemail_hide_mwi_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 422
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    const-string v1, "MWI is hidden from carrier on account of VVM"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 440
    :goto_0
    return-void

    .line 429
    :cond_0
    if-gez p1, :cond_2

    .line 430
    const/4 p1, -0x1

    .line 437
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->storeVoiceMailCount()V

    goto :goto_0

    .line 431
    :cond_2
    const/16 v1, 0x63

    if-le p1, v1, :cond_1

    .line 434
    const/16 p1, 0x63

    goto :goto_1
.end method
