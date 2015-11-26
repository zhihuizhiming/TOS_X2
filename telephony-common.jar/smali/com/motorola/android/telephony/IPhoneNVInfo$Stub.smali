.class public abstract Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneNVInfo.java"

# interfaces
.implements Lcom/motorola/android/telephony/IPhoneNVInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/IPhoneNVInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.telephony.IPhoneNVInfo"

.field static final TRANSACTION_checkForFtsAvailability:I = 0x28

.field static final TRANSACTION_checkForHiddenMenuAvailability:I = 0x26

.field static final TRANSACTION_get1XDataServiceTransferTimer:I = 0x22

.field static final TRANSACTION_getCAEnable:I = 0x2c

.field static final TRANSACTION_getCAStatus:I = 0x2d

.field static final TRANSACTION_getCDMAAkeyHashValue:I = 0x21

.field static final TRANSACTION_getEHRPDStatus:I = 0xb

.field static final TRANSACTION_getHDRSCPSessionStatus:I = 0xd

.field static final TRANSACTION_getHdrAnAuthPasswd:I = 0x14

.field static final TRANSACTION_getIPV6Enable:I = 0x24

.field static final TRANSACTION_getImsCdmaScanTimer:I = 0x1b

.field static final TRANSACTION_getImsEmpaSupported:I = 0x11

.field static final TRANSACTION_getImsHomeDomain:I = 0x15

.field static final TRANSACTION_getImsMultimodeScanTimer:I = 0x19

.field static final TRANSACTION_getImsPcscfPort:I = 0x8

.field static final TRANSACTION_getImsPhoneContextURI:I = 0x7

.field static final TRANSACTION_getImsSigComp:I = 0xa

.field static final TRANSACTION_getImsSmsFormat:I = 0x12

.field static final TRANSACTION_getImsSmsOverIP:I = 0x17

.field static final TRANSACTION_getImsT1Timer:I = 0x1

.field static final TRANSACTION_getImsT2Timer:I = 0x3

.field static final TRANSACTION_getImsTestMode:I = 0xf

.field static final TRANSACTION_getImsTfTimer:I = 0x5

.field static final TRANSACTION_getLTEBandEnable:I = 0x29

.field static final TRANSACTION_getLTEBandsEnableStatus:I = 0x2a

.field static final TRANSACTION_getModemAPN:I = 0x1f

.field static final TRANSACTION_isSecretCodeEnabled:I = 0x27

.field static final TRANSACTION_registerObserver:I = 0x1d

.field static final TRANSACTION_set1XDataServiceTransferTimer:I = 0x23

.field static final TRANSACTION_setCAEnable:I = 0x2e

.field static final TRANSACTION_setEHRPDStatus:I = 0xc

.field static final TRANSACTION_setHDRSCPSessionStatus:I = 0xe

.field static final TRANSACTION_setIPV6Enable:I = 0x25

.field static final TRANSACTION_setImsCdmaScanTimer:I = 0x1c

.field static final TRANSACTION_setImsHomeDomain:I = 0x16

.field static final TRANSACTION_setImsMultimodeScanTimer:I = 0x1a

.field static final TRANSACTION_setImsPcscfPort:I = 0x9

.field static final TRANSACTION_setImsSmsFormat:I = 0x13

.field static final TRANSACTION_setImsSmsOverIP:I = 0x18

.field static final TRANSACTION_setImsT1Timer:I = 0x2

.field static final TRANSACTION_setImsT2Timer:I = 0x4

.field static final TRANSACTION_setImsTestMode:I = 0x10

.field static final TRANSACTION_setImsTfTimer:I = 0x6

.field static final TRANSACTION_setLTEBandEnable:I = 0x2b

.field static final TRANSACTION_setModemAPN:I = 0x20

.field static final TRANSACTION_unregisterObserver:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/telephony/IPhoneNVInfo;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/android/telephony/IPhoneNVInfo;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 468
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsT1Timer()I

    move-result v4

    .line 49
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v4    # "_result":I
    :sswitch_2
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsT1Timer(I)I

    move-result v4

    .line 59
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_3
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsT2Timer()I

    move-result v4

    .line 67
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v4    # "_result":I
    :sswitch_4
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsT2Timer(I)I

    move-result v4

    .line 77
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_5
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsTfTimer()I

    move-result v4

    .line 85
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v4    # "_result":I
    :sswitch_6
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsTfTimer(I)I

    move-result v4

    .line 95
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_7
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsPhoneContextURI()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsPcscfPort()I

    move-result v4

    .line 111
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    .end local v4    # "_result":I
    :sswitch_9
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsPcscfPort(I)I

    move-result v4

    .line 121
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 127
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_a
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSigComp()Z

    move-result v4

    .line 129
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getEHRPDStatus()I

    move-result v4

    .line 137
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v4    # "_result":I
    :sswitch_c
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setEHRPDStatus(I)I

    move-result v4

    .line 147
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_d
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getHDRSCPSessionStatus()I

    move-result v4

    .line 155
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v4    # "_result":I
    :sswitch_e
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setHDRSCPSessionStatus(I)I

    move-result v4

    .line 165
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_f
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsTestMode()Z

    move-result v4

    .line 173
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v4    # "_result":Z
    :sswitch_10
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 182
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsTestMode(Z)I

    move-result v4

    .line 183
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_2
    move v0, v5

    .line 181
    goto :goto_1

    .line 189
    :sswitch_11
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsEmpaSupported()Z

    move-result v4

    .line 191
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    .end local v4    # "_result":Z
    :sswitch_12
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSmsFormat()Z

    move-result v4

    .line 199
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v6

    .line 208
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSmsFormat(Z)I

    move-result v4

    .line 209
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_5
    move v0, v5

    .line 207
    goto :goto_2

    .line 215
    :sswitch_14
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getHdrAnAuthPasswd()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsHomeDomain()Ljava/lang/String;

    move-result-object v4

    .line 225
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsHomeDomain(Ljava/lang/String;)I

    move-result v4

    .line 235
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_17
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsSmsOverIP()Z

    move-result v4

    .line 243
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v4    # "_result":Z
    :sswitch_18
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v6

    .line 252
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsSmsOverIP(Z)I

    move-result v4

    .line 253
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_7
    move v0, v5

    .line 251
    goto :goto_3

    .line 259
    :sswitch_19
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsMultimodeScanTimer()I

    move-result v4

    .line 261
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsMultimodeScanTimer(I)I

    move-result v4

    .line 271
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getImsCdmaScanTimer()I

    move-result v4

    .line 279
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v4    # "_result":I
    :sswitch_1c
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setImsCdmaScanTimer(I)I

    move-result v4

    .line 289
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_1d
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    move-result-object v0

    .line 298
    .local v0, "_arg0":Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    .end local v0    # "_arg0":Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    :sswitch_1e
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/telephony/IPhoneNVInfoObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfoObserver;

    move-result-object v0

    .line 307
    .restart local v0    # "_arg0":Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":Lcom/motorola/android/telephony/IPhoneNVInfoObserver;
    :sswitch_1f
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getModemAPN()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getCDMAAkeyHashValue()[B

    move-result-object v4

    .line 333
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 339
    .end local v4    # "_result":[B
    :sswitch_22
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->get1XDataServiceTransferTimer()I

    move-result v4

    .line 341
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v4    # "_result":I
    :sswitch_23
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->set1XDataServiceTransferTimer(I)I

    move-result v4

    .line 351
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_24
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getIPV6Enable()Z

    move-result v4

    .line 359
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v4, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v4    # "_result":Z
    :sswitch_25
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    .line 368
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setIPV6Enable(Z)I

    move-result v4

    .line 369
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_9
    move v0, v5

    .line 367
    goto :goto_4

    .line 375
    :sswitch_26
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->checkForHiddenMenuAvailability()Z

    move-result v4

    .line 377
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v4, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 383
    .end local v4    # "_result":Z
    :sswitch_27
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->isSecretCodeEnabled()Z

    move-result v4

    .line 385
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v4, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 391
    .end local v4    # "_result":Z
    :sswitch_28
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->checkForFtsAvailability()Z

    move-result v4

    .line 393
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v4    # "_result":Z
    :sswitch_29
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getLTEBandEnable(I)Z

    move-result v4

    .line 403
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v4, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2a
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getLTEBandsEnableStatus()[B

    move-result-object v4

    .line 411
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 417
    .end local v4    # "_result":[B
    :sswitch_2b
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 421
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move v2, v6

    .line 424
    .local v2, "_arg2":Z
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setLTEBandEnable([BIZ)I

    move-result v4

    .line 425
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2    # "_arg2":Z
    .end local v4    # "_result":I
    :cond_e
    move v2, v5

    .line 423
    goto :goto_5

    .line 431
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :sswitch_2c
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 435
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 436
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getCAEnable(II)Z

    move-result v4

    .line 437
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v4, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_2d
    const-string v5, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->getCAStatus(I)[B

    move-result-object v4

    .line 447
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 453
    .end local v0    # "_arg0":I
    .end local v4    # "_result":[B
    :sswitch_2e
    const-string v7, "com.motorola.android.telephony.IPhoneNVInfo"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 457
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 459
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    move v3, v6

    .line 462
    .local v3, "_arg3":Z
    :goto_6
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->setCAEnable([BIIZ)I

    move-result v4

    .line 463
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v3    # "_arg3":Z
    .end local v4    # "_result":I
    :cond_10
    move v3, v5

    .line 461
    goto :goto_6

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
