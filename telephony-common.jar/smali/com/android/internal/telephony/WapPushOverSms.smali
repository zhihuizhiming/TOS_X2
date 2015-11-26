.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pdu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/WapPushOverSms;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/WapPushOverSms;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 88
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sortPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[[B
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "refNumber"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "indexOffset"    # I

    .prologue
    const/4 v9, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    .local v6, "cursor":Landroid/database/Cursor;
    check-cast v9, [[B

    .line 111
    .local v9, "pdus":[[B
    const/4 v0, 0x3

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p3, v4, v0

    .line 112
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/WapPushOverSms;->sRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/WapPushOverSms;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v3, "address=? AND reference_number=? AND count=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [[B

    .line 117
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sub-int v8, v0, p4

    .line 120
    .local v8, "index":I
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "index":I
    :catch_0
    move-exception v7

    .line 123
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t access multipart SMS database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    if-eqz v6, :cond_0

    .line 126
    .end local v7    # "e":Landroid/database/SQLException;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_0
    return-object v9

    .line 125
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_1
    throw v0

    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public dispatchNotSortedWapPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Z)I
    .locals 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "refNumber"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "indexOffset"    # I
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p7, "bIs3gpp2"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/WapPushOverSms;->sortPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[[B

    move-result-object v6

    .line 136
    .local v6, "pdus":[[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v4, "output":Ljava/io/ByteArrayOutputStream;
    move-object v0, v6

    .local v0, "arr$":[[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 139
    .local v5, "pdu":[B
    if-nez p7, :cond_0

    .line 140
    const-string v7, "3gpp"

    invoke-static {v5, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 141
    .local v3, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v5

    .line 143
    .end local v3    # "msg":Landroid/telephony/SmsMessage;
    :cond_0
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v5    # "pdu":[B
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v7, p5, p6}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v7

    return v7
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 32
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 161
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Rx: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v16, 0x0

    .line 165
    .local v16, "index":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "index":I
    .local v17, "index":I
    :try_start_0
    aget-byte v29, p1, v16
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 166
    .local v26, "transactionId":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "index":I
    .restart local v16    # "index":I
    :try_start_1
    aget-byte v29, p1, v17

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 168
    .local v22, "pduType":I
    const/16 v29, 0x6

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x7

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x10e0048

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 172
    const/16 v29, -0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 173
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "index":I
    .restart local v17    # "index":I
    :try_start_2
    aget-byte v29, p1, v16
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 174
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "index":I
    .restart local v16    # "index":I
    :try_start_3
    aget-byte v29, p1, v17

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 176
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "index = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " PDU Type = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " transactionID = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v29, 0x6

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x7

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 182
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v29, 0x1

    .line 344
    .end local v22    # "pduType":I
    .end local v26    # "transactionId":I
    :goto_0
    return v29

    .line 186
    .restart local v22    # "pduType":I
    .restart local v26    # "transactionId":I
    :cond_0
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v29, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v21, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 199
    .local v21, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v29

    if-nez v29, :cond_2

    .line 200
    const-string v29, "WAP PUSH"

    const-string v30, "Received PDU. Header Length error."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v29, 0x2

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v14, v0

    .line 204
    .local v14, "headerLength":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v29

    add-int v16, v16, v29

    .line 206
    move/from16 v15, v16

    .line 220
    .local v15, "headerStartIndex":I
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v29

    if-nez v29, :cond_3

    .line 221
    const-string v29, "WAP PUSH"

    const-string v30, "Received PDU. Header Content-Type error."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v29, 0x2

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v20

    .line 226
    .local v20, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    .line 227
    .local v7, "binaryContentType":J
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v29

    add-int v16, v16, v29

    .line 229
    new-array v13, v14, [B

    .line 230
    .local v13, "header":[B
    const/16 v29, 0x0

    array-length v0, v13

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v15, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    if-eqz v20, :cond_6

    const-string v29, "application/vnd.wap.coc"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 235
    move-object/from16 v19, p1

    .line 242
    .local v19, "intentData":[B
    :goto_1
    const/16 v27, 0x0

    .line 250
    .local v27, "wapAppId":Ljava/lang/String;
    add-int v29, v16, v14

    add-int/lit8 v29, v29, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 252
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v5, v0

    .line 253
    .local v5, "appIdIndex":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 254
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    .line 256
    if-nez v27, :cond_4

    .line 257
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 260
    :cond_4
    if-nez v20, :cond_7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, "contentType":Ljava/lang/String;
    :goto_2
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "appid found: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 265
    const/16 v25, 0x1

    .line 266
    .local v25, "processFurther":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v28, v0

    .line 268
    .local v28, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v28, :cond_8

    .line 269
    const-string v29, "WAP PUSH"

    const-string v30, "wap push manager not found!"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 289
    :cond_5
    :goto_3
    if-nez v25, :cond_9

    .line 290
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 237
    .end local v5    # "appIdIndex":I
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v19    # "intentData":[B
    .end local v25    # "processFurther":Z
    .end local v27    # "wapAppId":Ljava/lang/String;
    .end local v28    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_6
    add-int v11, v15, v14

    .line 238
    .local v11, "dataIndex":I
    :try_start_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v11

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 239
    .restart local v19    # "intentData":[B
    const/16 v29, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 340
    .end local v7    # "binaryContentType":J
    .end local v11    # "dataIndex":I
    .end local v13    # "header":[B
    .end local v14    # "headerLength":I
    .end local v15    # "headerStartIndex":I
    .end local v19    # "intentData":[B
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v22    # "pduType":I
    :catch_0
    move-exception v4

    .line 343
    .end local v26    # "transactionId":I
    .local v4, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v29, 0x2

    goto/16 :goto_0

    .end local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "appIdIndex":I
    .restart local v7    # "binaryContentType":J
    .restart local v13    # "header":[B
    .restart local v14    # "headerLength":I
    .restart local v15    # "headerStartIndex":I
    .restart local v19    # "intentData":[B
    .restart local v20    # "mimeType":Ljava/lang/String;
    .restart local v21    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v22    # "pduType":I
    .restart local v26    # "transactionId":I
    .restart local v27    # "wapAppId":Ljava/lang/String;
    :cond_7
    move-object/from16 v10, v20

    .line 260
    goto/16 :goto_2

    .line 271
    .restart local v10    # "contentType":Ljava/lang/String;
    .restart local v25    # "processFurther":Z
    .restart local v28    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    :try_start_6
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v18, "intent":Landroid/content/Intent;
    const-string v29, "transactionId"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v29, "pduType"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v29, "header"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 275
    const-string v29, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 276
    const-string v29, "contentTypeParameters"

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    const-string v29, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v30

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v10, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v24

    .line 283
    .local v24, "procRet":I
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "procRet:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 284
    and-int/lit8 v29, v24, 0x1

    if-lez v29, :cond_5

    const v29, 0x8000

    and-int v29, v29, v24

    if-nez v29, :cond_5

    .line 286
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 292
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v24    # "procRet":I
    .end local v28    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v12

    .line 293
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v29, "WAP PUSH"

    const-string v30, "remote func failed..."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v5    # "appIdIndex":I
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v25    # "processFurther":Z
    :cond_9
    const-string v29, "WAP PUSH"

    const-string v30, "fall back to existing handler"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez v20, :cond_a

    .line 299
    const-string v29, "WAP PUSH"

    const-string v30, "Header Content-Type error."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v29, 0x2

    goto/16 :goto_0

    .line 306
    :cond_a
    const-string v29, "application/vnd.wap.mms-message"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 307
    const-string v23, "android.permission.RECEIVE_MMS"

    .line 308
    .local v23, "permission":Ljava/lang/String;
    const/16 v6, 0x12

    .line 314
    .local v6, "appOp":I
    :goto_5
    new-instance v18, Landroid/content/Intent;

    const-string v29, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v18    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v29, "transactionId"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v29, "pduType"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string v29, "header"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 319
    const-string v29, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 320
    const-string v29, "contentTypeParameters"

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 321
    const-string v29, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v30

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-static/range {v29 .. v30}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v9

    .line 326
    .local v9, "componentName":Landroid/content/ComponentName;
    if-eqz v9, :cond_b

    .line 328
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Delivering MMS to: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_b
    const-string v29, "appId"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 339
    const/16 v29, -0x1

    goto/16 :goto_0

    .line 310
    .end local v6    # "appOp":I
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v23    # "permission":Ljava/lang/String;
    :cond_c
    const-string v23, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    .line 311
    .restart local v23    # "permission":Ljava/lang/String;
    const/16 v6, 0x13

    .restart local v6    # "appOp":I
    goto/16 :goto_5

    .line 340
    .end local v6    # "appOp":I
    .end local v7    # "binaryContentType":J
    .end local v13    # "header":[B
    .end local v14    # "headerLength":I
    .end local v15    # "headerStartIndex":I
    .end local v16    # "index":I
    .end local v19    # "intentData":[B
    .end local v20    # "mimeType":Ljava/lang/String;
    .end local v21    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v22    # "pduType":I
    .end local v23    # "permission":Ljava/lang/String;
    .end local v26    # "transactionId":I
    .end local v27    # "wapAppId":Ljava/lang/String;
    .restart local v17    # "index":I
    :catch_2
    move-exception v4

    move/from16 v16, v17

    .end local v17    # "index":I
    .restart local v16    # "index":I
    goto/16 :goto_4
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 74
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 75
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 81
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
