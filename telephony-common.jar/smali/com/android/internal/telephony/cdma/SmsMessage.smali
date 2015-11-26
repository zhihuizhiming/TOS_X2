.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B

.field private static final VDBG:Z


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 104
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 493
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .param p1, "dtmfDigit"    # B

    .prologue
    .line 1036
    packed-switch p1, :pswitch_data_0

    .line 1054
    const/16 v0, 0x20

    .line 1058
    .local v0, "asciiDigit":B
    :goto_0
    return v0

    .line 1037
    .end local v0    # "asciiDigit":B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1038
    .end local v0    # "asciiDigit":B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1039
    .end local v0    # "asciiDigit":B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1040
    .end local v0    # "asciiDigit":B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1041
    .end local v0    # "asciiDigit":B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1042
    .end local v0    # "asciiDigit":B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1043
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1044
    .end local v0    # "asciiDigit":B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1045
    .end local v0    # "asciiDigit":B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1046
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1047
    .end local v0    # "asciiDigit":B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1048
    .end local v0    # "asciiDigit":B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1049
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1050
    .end local v0    # "asciiDigit":B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1051
    .end local v0    # "asciiDigit":B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1052
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1036
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 240
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 242
    .local v1, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 247
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 248
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 268
    .end local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 251
    .restart local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 256
    const/4 v5, 0x1

    aget-byte v3, p1, v5

    .line 260
    .local v3, "size":I
    new-array v2, v3, [B

    .line 261
    .local v2, "pdu":[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 268
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 112
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 115
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v2

    .line 117
    .restart local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 119
    goto :goto_0

    .line 120
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 122
    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 989
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 990
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 991
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 992
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 995
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 996
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 997
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 999
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1000
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1001
    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1002
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1003
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1004
    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1006
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1008
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1009
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1010
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1012
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1013
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1014
    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    .line 1024
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v4

    .line 1026
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    .line 858
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 859
    .local v0, "msgId":I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "nextMsgId":Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :cond_0
    monitor-exit v3

    return v0

    .line 858
    .end local v1    # "nextMsgId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .prologue
    .line 401
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    const/4 v3, 0x0

    .line 372
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 373
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 374
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 375
    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 377
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 378
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 380
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 381
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 382
    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 383
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 384
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 386
    invoke-static {p1, p4, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 312
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 313
    :cond_0
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    .line 316
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 317
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 318
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 319
    invoke-static {p1, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPduWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "priority"    # I

    .prologue
    .line 340
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 341
    :cond_0
    const/4 v1, 0x0

    .line 347
    :goto_0
    return-object v1

    .line 344
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 345
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 346
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 347
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v0, "SmsMessage"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 10
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 132
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 133
    .local v7, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 134
    .local v5, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 135
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 142
    .local v8, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 144
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    const/4 v9, 0x1

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 158
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, "addressDigitMode":I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 164
    .local v2, "count":B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 165
    new-array v4, v2, [B

    .line 167
    .local v4, "data":[B
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 171
    if-nez v1, :cond_0

    .line 172
    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    .line 167
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 148
    .end local v1    # "addressDigitMode":I
    .end local v2    # "count":B
    .end local v4    # "data":[B
    .end local v6    # "index":I
    :cond_1
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_2

    .line 150
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 152
    :cond_2
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 176
    .restart local v1    # "addressDigitMode":I
    .restart local v2    # "count":B
    .restart local v4    # "data":[B
    .restart local v6    # "index":I
    :cond_3
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 178
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 179
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 180
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 182
    if-gez v2, :cond_4

    .line 183
    const/4 v2, 0x0

    .line 188
    :cond_4
    new-array v4, v2, [B

    .line 190
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_5

    .line 191
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 194
    :cond_5
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    .local v3, "countInt":I
    if-gez v3, :cond_6

    .line 206
    const/4 v3, 0x0

    .line 209
    :cond_6
    new-array v4, v3, [B

    .line 210
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_7

    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 214
    :cond_7
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 217
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 218
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 219
    iput-object v0, v7, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 220
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 223
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 225
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .param p1, "pdu"    # [B

    .prologue
    .line 533
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 534
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 537
    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 538
    .local v4, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 541
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 542
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 543
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 545
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 546
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 547
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 548
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 550
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 551
    .local v6, "length":I
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 554
    array-length v7, p1

    if-le v6, v7, :cond_0

    .line 555
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    .end local v6    # "length":I
    :catch_0
    move-exception v5

    .line 580
    .local v5, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 559
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v6    # "length":I
    :cond_0
    :try_start_1
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 560
    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 562
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 564
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 565
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 566
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 569
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 571
    .local v2, "bearerDataLength":I
    array-length v7, p1

    if-le v2, v7, :cond_1

    .line 572
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    .end local v2    # "bearerDataLength":I
    .end local v6    # "length":I
    :catch_1
    move-exception v5

    .line 583
    .local v5, "ex":Ljava/lang/Exception;
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 588
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 589
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 590
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 593
    return-void

    .line 576
    .restart local v2    # "bearerDataLength":I
    .restart local v6    # "length":I
    :cond_1
    :try_start_2
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 577
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 578
    invoke-virtual {v3}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 24
    .param p1, "pdu"    # [B

    .prologue
    .line 599
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 600
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 601
    .local v8, "dis":Ljava/io/DataInputStream;
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 602
    .local v9, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 603
    .local v2, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 606
    .local v17, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 608
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->available()I

    move-result v21

    if-lez v21, :cond_9

    .line 609
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 610
    .local v14, "parameterId":I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    .line 611
    .local v15, "parameterLen":I
    new-array v13, v15, [B

    .line 613
    .local v13, "parameterData":[B
    packed-switch v14, :pswitch_data_0

    .line 713
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unsupported parameterId ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :catch_0
    move-exception v10

    .line 719
    .local v10, "ex":Ljava/lang/Exception;
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 724
    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 725
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 726
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 727
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 730
    return-void

    .line 620
    .restart local v13    # "parameterData":[B
    .restart local v14    # "parameterId":I
    .restart local v15    # "parameterLen":I
    :pswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 621
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "teleservice = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 628
    :pswitch_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto/16 :goto_0

    .line 632
    :pswitch_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 633
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 634
    .local v3, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 635
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 636
    const/4 v12, 0x0

    .line 637
    .local v12, "numberType":I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 638
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 639
    iput v12, v2, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 641
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 642
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 645
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 647
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 648
    .local v7, "data":[B
    const/4 v4, 0x0

    .line 650
    .local v4, "b":B
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 652
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 653
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    and-int/lit8 v21, v21, 0xf

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 656
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v7, v11

    .line 652
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 658
    .end local v11    # "index":I
    :cond_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 659
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 660
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 661
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 662
    aput-byte v4, v7, v11

    .line 660
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 665
    .end local v11    # "index":I
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 666
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 667
    const-string v21, "SmsMessage"

    const-string v22, "TODO: Originating Addr is email id"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    :goto_4
    iput-object v7, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 678
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Originating Addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    :cond_5
    const-string v21, "SmsMessage"

    const-string v22, "TODO: Originating Addr is data network address"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 672
    :cond_6
    const-string v21, "SmsMessage"

    const-string v22, "Originating Addr is of incorrect type"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 675
    :cond_7
    const-string v21, "SmsMessage"

    const-string v22, "Incorrect Digit mode"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 682
    .end local v3    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v4    # "b":B
    .end local v7    # "data":[B
    .end local v12    # "numberType":I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 683
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 684
    .local v18, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 685
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 686
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 687
    .local v19, "subAddrLen":I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 688
    .local v20, "subdata":[B
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 689
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 691
    .restart local v4    # "b":B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v20, v11

    .line 688
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 693
    .end local v4    # "b":B
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_0

    .line 696
    .end local v11    # "index":I
    .end local v18    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v19    # "subAddrLen":I
    .end local v20    # "subdata":[B
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 697
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 698
    .local v16, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_0

    .line 701
    .end local v16    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 702
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v6, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 703
    .local v6, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 704
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 705
    iget-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 706
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_0

    .line 709
    .end local v6    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 710
    iput-object v13, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .line 716
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 717
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    .line 875
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 15
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I

    .prologue
    .line 899
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v4

    .line 901
    .local v4, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 981
    :goto_0
    return-object v9

    .line 903
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 904
    .local v3, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v12, 0x2

    iput v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 906
    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v12

    iput v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 908
    move/from16 v0, p1

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 909
    const/4 v12, 0x0

    iput-boolean v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 910
    const/4 v12, 0x0

    iput-boolean v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 911
    const/4 v12, 0x0

    iput-boolean v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 912
    const/4 v12, -0x1

    move/from16 v0, p3

    if-eq v0, v12, :cond_1

    .line 913
    const/4 v12, 0x1

    iput-boolean v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 914
    move/from16 v0, p3

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 917
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 919
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 920
    .local v6, "encodedBearerData":[B
    const-string v12, "CDMA:SMS"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 921
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MO (encoded) BearerData = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MO raw BearerData = \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_2
    if-nez v6, :cond_3

    const/4 v9, 0x0

    goto :goto_0

    .line 926
    :cond_3
    iget-boolean v12, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v12, :cond_5

    const/16 v11, 0x1005

    .line 929
    .local v11, "teleservice":I
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 930
    .local v10, "resource":Landroid/content/res/Resources;
    if-eqz v10, :cond_4

    .line 931
    const v12, 0x11100c0

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 933
    .local v1, "ascii7bitForLongMsg":Z
    if-eqz v1, :cond_4

    .line 934
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ascii7bitForLongMsg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v11, 0x1002

    .line 938
    .end local v1    # "ascii7bitForLongMsg":Z
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 939
    .local v7, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v12, 0x0

    iput v12, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 940
    iput v11, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 941
    iput-object v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 942
    const/4 v12, 0x1

    iput v12, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 943
    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 955
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x64

    invoke-direct {v2, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 956
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 957
    .local v5, "dos":Ljava/io/DataOutputStream;
    iget v12, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 958
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 959
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 960
    iget v12, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 961
    iget v12, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 962
    iget v12, v4, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 963
    iget v12, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 964
    iget v12, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 965
    iget-object v12, v4, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v13, 0x0

    iget-object v14, v4, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v14, v14

    invoke-virtual {v5, v12, v13, v14}, Ljava/io/DataOutputStream;->write([BII)V

    .line 967
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 968
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 969
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 970
    array-length v12, v6

    invoke-virtual {v5, v12}, Ljava/io/DataOutputStream;->write(I)V

    .line 971
    const/4 v12, 0x0

    array-length v13, v6

    invoke-virtual {v5, v6, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 972
    invoke-virtual {v5}, Ljava/io/FilterOutputStream;->close()V

    .line 974
    new-instance v9, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 975
    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v9, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 976
    const/4 v12, 0x0

    iput-object v12, v9, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 978
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v8

    .line 979
    .local v8, "ex":Ljava/io/IOException;
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "creating SubmitPdu failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 926
    .end local v7    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "resource":Landroid/content/res/Resources;
    .end local v11    # "teleservice":I
    :cond_5
    const/16 v11, 0x1002

    goto/16 :goto_1
.end method


# virtual methods
.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1076
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1078
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1079
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1080
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1081
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1084
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 839
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 841
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0
.end method

.method getMessageType()I
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 409
    const-string v0, "SmsMessage"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 429
    const-string v0, "SmsMessage"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 419
    const-string v0, "SmsMessage"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 480
    const-string v0, "SmsMessage"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x2

    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    .line 815
    .local v11, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-nez v11, :cond_0

    .line 816
    const-string v0, "SmsMessage"

    const-string v1, "BearerData.decode() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    return-object v9

    .line 820
    :cond_0
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 825
    .local v12, "plmn":Ljava/lang/String;
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 827
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    iget v3, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v8, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iget-object v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    move-object v9, v0

    goto :goto_0
.end method

.method protected parseSms()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    .line 739
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 750
    const-string v0, "CDMA:SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT raw BearerData = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MT (decoded) BearerData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    .line 763
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v0, v4, :cond_4

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 774
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_5

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    .line 781
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_8

    .line 790
    const-string v1, "SmsMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    if-nez v0, :cond_7

    const-string v0, "also missing"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " userData)."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iput v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 802
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 804
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseMessageBody()V

    goto/16 :goto_0

    .line 790
    :cond_7
    const-string v0, "does have"

    goto :goto_1

    .line 795
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 796
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    .line 798
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v4, :cond_6

    .line 799
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method protected processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 13
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1100
    const/4 v8, 0x0

    .line 1101
    .local v8, "subparamId":I
    const/4 v7, 0x0

    .line 1102
    .local v7, "subParamLen":I
    const/4 v5, 0x0

    .line 1103
    .local v5, "msgID":I
    const/4 v2, 0x0

    .line 1105
    .local v2, "decodeSuccess":Z
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1108
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 1109
    if-eqz v8, :cond_0

    .line 1110
    const-string v10, "SmsMessage"

    const-string v11, "Invalid WDP SubparameterId"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :goto_0
    return v9

    .line 1113
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_0
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1114
    if-eq v7, v12, :cond_1

    .line 1115
    const-string v10, "SmsMessage"

    const-string v11, "Invalid WDP subparameter length"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :catch_0
    move-exception v3

    .line 1148
    .local v3, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CT WDP Header decode failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    move v9, v2

    .line 1150
    goto :goto_0

    .line 1118
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_1
    :try_start_1
    iget-object v11, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    iput v12, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1119
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    shl-int/lit8 v5, v11, 0x8

    .line 1120
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    or-int/2addr v5, v11

    .line 1121
    iget-object v11, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    if-ne v12, v10, :cond_2

    :goto_2
    iput-boolean v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1122
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v10, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v10, :cond_3

    .line 1123
    const-string v10, "SmsMessage"

    const-string v11, "Invalid WDP UserData header value"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v10, v9

    .line 1121
    goto :goto_2

    .line 1126
    :cond_3
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1127
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput v5, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1128
    iput v5, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    .line 1131
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 1132
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    mul-int/lit8 v7, v10, 0x8

    .line 1133
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1134
    const/4 v0, 0x5

    .line 1135
    .local v0, "consumedBits":I
    iget-object v10, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v10, :cond_4

    .line 1136
    const-string v10, "SmsMessage"

    const-string v11, "Invalid WDP encoding"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1139
    :cond_4
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1140
    add-int/lit8 v0, v0, 0x8

    .line 1141
    add-int/lit8 v6, v7, -0xd

    .line 1142
    .local v6, "remainigBits":I
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v1, v9, 0x8

    .line 1143
    .local v1, "dataBits":I
    if-ge v1, v6, :cond_5

    .line 1144
    :goto_3
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1145
    iget-object v9, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v9, p1, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1146
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_5
    move v1, v6

    .line 1143
    goto :goto_3
.end method
