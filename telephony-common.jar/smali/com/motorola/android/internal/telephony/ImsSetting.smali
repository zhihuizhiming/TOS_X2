.class public Lcom/motorola/android/internal/telephony/ImsSetting;
.super Ljava/lang/Object;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;,
        Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;,
        Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;,
        Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;,
        Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;,
        Lcom/motorola/android/internal/telephony/ImsSetting$Config;,
        Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;,
        Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;,
        Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;,
        Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;,
        Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;,
        Lcom/motorola/android/internal/telephony/ImsSetting$PadingValue;
    }
.end annotation


# static fields
.field private static final BYTE_SIZE:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DISABLED:B = 0x0t

.field private static final ENABLED:B = 0x1t

.field private static final HEADER_SIZE:I = 0x8

.field private static final INT_SIZE:I = 0x4

.field private static final INVALID:B = 0x0t

.field private static final MAX_SIZE:I = 0x100

.field private static final OEM_RIL_REQUEST_GET_IMS_MODE:I = 0x50021

.field private static final OEM_RIL_REQUEST_GET_IMS_SIP_CONFIG:I = 0x50023

.field private static final OEM_RIL_REQUEST_GET_IMS_SMS_CONFIG:I = 0x50025

.field private static final OEM_RIL_REQUEST_GET_IMS_USER_CONFIG:I = 0x50027

.field private static final OEM_RIL_REQUEST_SET_IMS_MODE:I = 0x50022

.field private static final OEM_RIL_REQUEST_SET_IMS_SIP_CONFIG:I = 0x50024

.field private static final OEM_RIL_REQUEST_SET_IMS_SMS_CONFIG:I = 0x50026

.field private static final OEM_RIL_REQUEST_SET_IMS_USER_CONFIG:I = 0x50028

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field public static final SMS_FORMAT_3GPP:I = 0x1

.field public static final SMS_FORMAT_3GPP2:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IMS_SETTING"

.field private static final VALID:B = 0x1t


# instance fields
.field private mITelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 52
    return-void
.end method

.method private addMotRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 139
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 110
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 121
    :goto_0
    return-object v3

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 115
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 116
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 118
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 104
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method private sendMotRilHookMsg(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 147
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 148
    .local v1, "request":[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting;->addMotRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 152
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMotRilHookMsg(IB)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B

    .prologue
    .line 156
    const/16 v2, 0x9

    new-array v1, v2, [B

    .line 157
    .local v1, "request":[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 159
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting;->addMotRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 160
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMotRilHookMsg(II)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # I

    .prologue
    .line 176
    const/16 v2, 0xc

    new-array v1, v2, [B

    .line 177
    .local v1, "request":[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting;->addMotRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 180
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 182
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 12
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .prologue
    const/4 v11, 0x0

    .line 194
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 195
    .local v6, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v6, :cond_0

    .line 196
    const-string v8, "IMS_SETTING"

    const-string v9, "Cannot get Telephony service"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v3, Landroid/os/RemoteException;

    const-string v8, "Cannot get Telephony Service"

    invoke-direct {v3, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v8, v11, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, "ar":Landroid/os/AsyncResult;
    move-object v1, v0

    .line 236
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .local v1, "ar":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 202
    .end local v1    # "ar":Ljava/lang/Object;
    :cond_0
    const/16 v8, 0x800

    new-array v4, v8, [B

    .line 203
    .local v4, "response":[B
    const-string v8, "IMS_SETTING"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lcom/motorola/android/internal/telephony/ImsSetting;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v5, -0x1

    .line 207
    .local v5, "retVal":I
    :try_start_0
    invoke-interface {v6, p2, v4}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 208
    if-ltz v5, :cond_2

    .line 209
    const/4 v7, 0x0

    .line 211
    .local v7, "validResponseBytes":[B
    if-lez v5, :cond_1

    .line 212
    new-array v7, v5, [B

    .line 213
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v8, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    const-string v8, "IMS_SETTING"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response Data is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/motorola/android/internal/telephony/ImsSetting;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v7, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v7    # "validResponseBytes":[B
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :goto_1
    move-object v1, v0

    .line 236
    .restart local v1    # "ar":Ljava/lang/Object;
    goto :goto_0

    .line 225
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "ar":Ljava/lang/Object;
    :cond_2
    mul-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v3

    .line 226
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v8, 0x0

    invoke-direct {v0, p2, v8, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_1

    .line 228
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "ex":Lcom/android/internal/telephony/CommandException;
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "IMS_SETTING"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendRilOemHook RequestID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " exception, unable to send RIL request from this application"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v8, v11, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    goto :goto_1
.end method

.method private setSMSConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;)Z
    .locals 1
    .param p1, "c"    # Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    .prologue
    .line 761
    const v0, 0x50026

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting;->setConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Z

    move-result v0

    return v0
.end method

.method private setSipConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;)Z
    .locals 1
    .param p1, "c"    # Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    .prologue
    .line 757
    const v0, 0x50024

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting;->setConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Z

    move-result v0

    return v0
.end method

.method private setUserConfig(Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;)Z
    .locals 1
    .param p1, "c"    # Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;

    .prologue
    .line 765
    const v0, 0x50028

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting;->setConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Lcom/motorola/android/internal/telephony/ImsSetting$Config;
    .locals 7
    .param p1, "requestid"    # I
    .param p2, "c"    # Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    .prologue
    .line 710
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendMotRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 711
    .local v2, "result":Landroid/os/AsyncResult;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, [B

    if-eqz v4, :cond_1

    .line 712
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 713
    .local v0, "buf":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 714
    .local v3, "ret":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 716
    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;

    invoke-direct {v1, p0, p2}, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;Lcom/motorola/android/internal/telephony/ImsSetting$Config;)V

    .line 717
    .local v1, "r":Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;
    invoke-virtual {v1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->populate(Ljava/nio/ByteBuffer;)V

    .line 718
    iget-object v4, v1, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mHeader:Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    iget-object v4, v1, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mConfig:Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    .line 726
    .end local v0    # "buf":[B
    .end local v1    # "r":Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;
    .end local v3    # "ret":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v4

    .line 721
    .restart local v0    # "buf":[B
    .restart local v1    # "r":Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;
    .restart local v3    # "ret":Ljava/nio/ByteBuffer;
    :cond_0
    const-string v4, "IMS_SETTING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfig: requestid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return failure"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v0    # "buf":[B
    .end local v1    # "r":Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;
    .end local v3    # "ret":Ljava/nio/ByteBuffer;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 724
    :cond_1
    const-string v4, "IMS_SETTING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfig: requestid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " no response/error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getImsMode()Z
    .locals 7

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 70
    .local v3, "val":Z
    const v4, 0x50021

    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendMotRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v2

    .line 72
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 73
    const-string v4, "IMS_SETTING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return v3

    .line 74
    :cond_0
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 75
    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 76
    .local v0, "buf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 78
    :goto_1
    const-string v4, "IMS_SETTING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 80
    .end local v0    # "buf":[B
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_2
    const-string v4, "IMS_SETTING"

    const-string v5, "getImsMode Command returned null response "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSIPLocalPort()S
    .locals 2

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSipConfigRawData()Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    move-result-object v0

    .line 770
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->getValue()S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSIPSigComp()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 817
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSipConfigRawData()Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    move-result-object v0

    .line 818
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    .line 820
    .local v1, "rst":Z
    :goto_0
    return v1

    .end local v1    # "rst":Z
    :cond_0
    move v1, v2

    .line 818
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getSIPT1Timer()I
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSipConfigRawData()Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    move-result-object v0

    .line 782
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSIPT2Timer()I
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSipConfigRawData()Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    move-result-object v0

    .line 794
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSIPTfTimer()I
    .locals 2

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSipConfigRawData()Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    move-result-object v0

    .line 806
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSMSConfig()Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    .locals 2

    .prologue
    .line 749
    const v0, 0x50025

    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->getConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    return-object v0
.end method

.method public getSMSFormat()I
    .locals 2

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSConfig()Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    move-result-object v0

    .line 832
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->getValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSMSOverIP()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSConfig()Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    move-result-object v0

    .line 845
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->getValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->getValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getSMSPhoneContextURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getSMSConfig()Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    move-result-object v0

    .line 858
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSipConfigRawData()Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    .locals 2

    .prologue
    .line 745
    const v0, 0x50023

    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->getConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    return-object v0
.end method

.method getUserConfig()Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;
    .locals 2

    .prologue
    .line 753
    const v0, 0x50027

    new-instance v1, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->getConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;

    return-object v0
.end method

.method public getUserDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ImsSetting;->getUserConfig()Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;

    move-result-object v0

    .line 871
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->getValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMotRilHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 166
    array-length v2, p2

    add-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 167
    .local v1, "request":[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "reqBuffer":Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting;->addMotRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 170
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method setConfig(ILcom/motorola/android/internal/telephony/ImsSetting$Config;)Z
    .locals 6
    .param p1, "requestid"    # I
    .param p2, "c"    # Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    .prologue
    .line 730
    const/4 v2, 0x0

    .line 732
    .local v2, "retval":Z
    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/ImsSetting$Config;->getSize()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 733
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 734
    invoke-virtual {p2, v0}, Lcom/motorola/android/internal/telephony/ImsSetting$Config;->put(Ljava/nio/ByteBuffer;)V

    .line 735
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendMotRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v1

    .line 736
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 737
    const/4 v2, 0x1

    .line 741
    :goto_0
    return v2

    .line 739
    :cond_0
    const-string v3, "IMS_SETTING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfig: requestid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImsMode(Z)Z
    .locals 6
    .param p1, "mode"    # Z

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "retval":Z
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    int-to-byte v0, v3

    .line 92
    .local v0, "payload":B
    const v3, 0x50022

    invoke-direct {p0, v3, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->sendMotRilHookMsg(IB)Landroid/os/AsyncResult;

    move-result-object v1

    .line 94
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 95
    const/4 v2, 0x1

    .line 100
    :goto_1
    return v2

    .line 90
    .end local v0    # "payload":B
    .end local v1    # "result":Landroid/os/AsyncResult;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 97
    .restart local v0    # "payload":B
    .restart local v1    # "result":Landroid/os/AsyncResult;
    :cond_1
    const-string v3, "IMS_SETTING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImsMode Command returned Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSIPLocalPort(S)Z
    .locals 3
    .param p1, "port"    # S

    .prologue
    .line 774
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 775
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPortValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 776
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mLocalPort:Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ShortValue;->setValue(S)V

    .line 777
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSipConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;)Z

    move-result v1

    return v1
.end method

.method public setSIPSigComp(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 824
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 825
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabledValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 826
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mSigCompEnabled:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->setValue(B)V

    .line 827
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSipConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;)Z

    move-result v1

    return v1

    .line 826
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSIPT1Timer(I)Z
    .locals 3
    .param p1, "t1"    # I

    .prologue
    .line 786
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 787
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 788
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT1Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->setValue(I)V

    .line 789
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSipConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;)Z

    move-result v1

    return v1
.end method

.method public setSIPT2Timer(I)Z
    .locals 3
    .param p1, "t2"    # I

    .prologue
    .line 798
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 799
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2TimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 800
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mT2Timer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->setValue(I)V

    .line 801
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSipConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;)Z

    move-result v1

    return v1
.end method

.method public setSIPTfTimer(I)Z
    .locals 3
    .param p1, "tf"    # I

    .prologue
    .line 810
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 811
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimerValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 812
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;->mTfTimer:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->setValue(I)V

    .line 813
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSipConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SipConfigRawData;)Z

    move-result v1

    return v1
.end method

.method public setSMSFormat(I)Z
    .locals 3
    .param p1, "format"    # I

    .prologue
    .line 837
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 838
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsFormatValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 839
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSFormat:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->setValue(I)V

    .line 840
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;)Z

    move-result v1

    return v1
.end method

.method public setSMSOverIP(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 850
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 851
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSmsOverIPValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 852
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mSMSOverIP:Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ByteValue;->setValue(B)V

    .line 853
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;)Z

    move-result v1

    return v1

    .line 852
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSMSPhoneContextURI(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 863
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 864
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURIValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 865
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;->mContextURI:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->setValue(Ljava/lang/String;)V

    .line 866
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setSMSConfig(Lcom/motorola/android/internal/telephony/ImsSetting$SMSConfig;)Z

    move-result v1

    return v1
.end method

.method public setUserDomain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 876
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 877
    .local v0, "c":Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->setValue(Z)V

    .line 878
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->setValue(Ljava/lang/String;)V

    .line 879
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/ImsSetting;->setUserConfig(Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;)Z

    move-result v1

    return v1
.end method
