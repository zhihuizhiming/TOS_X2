.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_getActiveAdmins:I = 0x2e

.field static final TRANSACTION_getCameraDisabled:I = 0x29

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1b

.field static final TRANSACTION_getDeviceOwner:I = 0x3a

.field static final TRANSACTION_getDeviceOwnerName:I = 0x3b

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x24

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x2b

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1d

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x20

.field static final TRANSACTION_getNfcAllowed:I = 0x3e

.field static final TRANSACTION_getPasswordExpiration:I = 0x17

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x16

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x14

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordSimpleAllowed:I = 0x12

.field static final TRANSACTION_getRemoveWarning:I = 0x30

.field static final TRANSACTION_getSkipInactivityTimeout:I = 0x41

.field static final TRANSACTION_getStorageEncryption:I = 0x26

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x27

.field static final TRANSACTION_hasGrantedPolicy:I = 0x32

.field static final TRANSACTION_installCaCert:I = 0x3c

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x18

.field static final TRANSACTION_isAdminActive:I = 0x2d

.field static final TRANSACTION_isDeviceOwner:I = 0x39

.field static final TRANSACTION_isFingerprintSufficient:I = 0x1a

.field static final TRANSACTION_isNDigitPinSufficient:I = 0x19

.field static final TRANSACTION_lockNow:I = 0x21

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x2f

.field static final TRANSACTION_removeActiveAdmin:I = 0x31

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x36

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x37

.field static final TRANSACTION_resetPassword:I = 0x1e

.field static final TRANSACTION_setActiveAdmin:I = 0x2c

.field static final TRANSACTION_setActivePasswordState:I = 0x33

.field static final TRANSACTION_setActivePasswordStateReusingExisting:I = 0x35

.field static final TRANSACTION_setActivePasswordStateUsingBackup:I = 0x34

.field static final TRANSACTION_setCameraDisabled:I = 0x28

.field static final TRANSACTION_setDeviceOwner:I = 0x38

.field static final TRANSACTION_setGlobalProxy:I = 0x23

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2a

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1c

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1f

.field static final TRANSACTION_setNfcQuality:I = 0x3f

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x15

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x13

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordSimpleAllowed:I = 0x11

.field static final TRANSACTION_setSkipInactivityTimeout:I = 0x40

.field static final TRANSACTION_setStorageEncryption:I = 0x25

.field static final TRANSACTION_uninstallCaCert:I = 0x3d

.field static final TRANSACTION_wipeData:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1082
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 60
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 62
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 63
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;II)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 69
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 78
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 79
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v17

    .line 80
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v3, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 86
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 95
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 97
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 92
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 104
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_4
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 113
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v17

    .line 115
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 110
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 121
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 130
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 133
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 139
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 148
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v17

    .line 150
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 145
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 156
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 159
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 165
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 167
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 168
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 162
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 174
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 177
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 183
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 184
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v17

    .line 185
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 180
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 191
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 200
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 202
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 203
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 197
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 209
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 212
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 218
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 219
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v17

    .line 220
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 215
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 226
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 229
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 235
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 237
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 238
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 232
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 244
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    .line 247
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 253
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 254
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v17

    .line 255
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 250
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 261
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 264
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 270
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 272
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 273
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 267
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 279
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 282
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 288
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v17

    .line 290
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 285
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 296
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 299
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 305
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 307
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 308
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 302
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 314
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_10
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 317
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 323
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 324
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v17

    .line 325
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 320
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 331
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_11
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 334
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 340
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v5, 0x1

    .line 342
    .local v5, "_arg1":Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 343
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordSimpleAllowed(Landroid/content/ComponentName;ZI)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 337
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 340
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 349
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_12
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 352
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 358
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 359
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordSimpleAllowed(Landroid/content/ComponentName;I)Z

    move-result v17

    .line 360
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v17, :cond_13

    const/4 v3, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 355
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :cond_12
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13

    .line 361
    .restart local v5    # "_arg1":I
    .restart local v17    # "_result":Z
    :cond_13
    const/4 v3, 0x0

    goto :goto_14

    .line 366
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_13
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 369
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 375
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 377
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 378
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 372
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_14
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15

    .line 384
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_14
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 387
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 393
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 394
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v17

    .line 395
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 390
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_15
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    .line 401
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_15
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    .line 404
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 410
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 412
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 413
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 407
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg2":I
    .end local v15    # "_arg1":J
    :cond_16
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17

    .line 419
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_16
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 422
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 428
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 429
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v17

    .line 430
    .local v17, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    move-object/from16 v0, p3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 425
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":J
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 436
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_17
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    .line 439
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 445
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 446
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;I)J

    move-result-wide v17

    .line 447
    .restart local v17    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, p3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 449
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 442
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":J
    :cond_18
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19

    .line 453
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_18
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 456
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(I)Z

    move-result v17

    .line 457
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v17, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 458
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 463
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_19
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 467
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 468
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNDigitPinSufficient(II)Z

    move-result v17

    .line 469
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v17, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 470
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 475
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_1a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 478
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isFingerprintSufficient(I)Z

    move-result v17

    .line 479
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v17, :cond_1b

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 480
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 485
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_1b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 488
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(I)I

    move-result v17

    .line 489
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 495
    .end local v4    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_1c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    .line 498
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 504
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 506
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 507
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 501
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_1c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1d

    .line 513
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 516
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 522
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 523
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v17

    .line 524
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 519
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 530
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_1e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 536
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 537
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;II)Z

    move-result v17

    .line 538
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v17, :cond_1e

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 539
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 544
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v17    # "_result":Z
    :sswitch_1f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 547
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 553
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 555
    .restart local v15    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 556
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 550
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg2":I
    .end local v15    # "_arg1":J
    :cond_1f
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    .line 562
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_20
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 565
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 571
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 572
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v17

    .line 573
    .local v17, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    move-object/from16 v0, p3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 575
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 568
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":J
    :cond_20
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_21

    .line 579
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_21
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 586
    :sswitch_22
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 590
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 591
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(II)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 597
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_23
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    .line 600
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 606
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 611
    .local v7, "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v17

    .line 612
    .local v17, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    if-eqz v17, :cond_22

    .line 614
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    :goto_23
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 603
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v17    # "_result":Landroid/content/ComponentName;
    :cond_21
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    .line 618
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v7    # "_arg3":I
    .restart local v17    # "_result":Landroid/content/ComponentName;
    :cond_22
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 624
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v17    # "_result":Landroid/content/ComponentName;
    :sswitch_24
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 627
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v17

    .line 628
    .restart local v17    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v17, :cond_23

    .line 630
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 636
    :goto_24
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 634
    :cond_23
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 640
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Landroid/content/ComponentName;
    :sswitch_25
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    .line 643
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 649
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v5, 0x1

    .line 651
    .local v5, "_arg1":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 652
    .local v6, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;ZI)I

    move-result v17

    .line 653
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 646
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    .end local v17    # "_result":I
    :cond_24
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_25

    .line 649
    :cond_25
    const/4 v5, 0x0

    goto :goto_26

    .line 659
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_26
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 662
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 668
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 669
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v17

    .line 670
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v17, :cond_27

    const/4 v3, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 665
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_27

    .line 671
    .restart local v5    # "_arg1":I
    .restart local v17    # "_result":Z
    :cond_27
    const/4 v3, 0x0

    goto :goto_28

    .line 676
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_27
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 679
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(I)I

    move-result v17

    .line 680
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 686
    .end local v4    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_28
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    .line 689
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 695
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    const/4 v5, 0x1

    .line 697
    .local v5, "_arg1":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 698
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 692
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_28
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_29

    .line 695
    :cond_29
    const/4 v5, 0x0

    goto :goto_2a

    .line 704
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_29
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 707
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 713
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 714
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v17

    .line 715
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v17, :cond_2b

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 710
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :cond_2a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2b

    .line 716
    .restart local v5    # "_arg1":I
    .restart local v17    # "_result":Z
    :cond_2b
    const/4 v3, 0x0

    goto :goto_2c

    .line 721
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_2a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 724
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 730
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 732
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 733
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 727
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    :cond_2c
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2d

    .line 739
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 742
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 748
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 749
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v17

    .line 750
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 745
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":I
    :cond_2d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    .line 756
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    .line 759
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 765
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v5, 0x1

    .line 767
    .local v5, "_arg1":Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 768
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 762
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_2e
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    .line 765
    :cond_2f
    const/4 v5, 0x0

    goto :goto_30

    .line 774
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_30

    .line 777
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 783
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 784
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v17

    .line 785
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v17, :cond_31

    const/4 v3, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 780
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 786
    .restart local v5    # "_arg1":I
    .restart local v17    # "_result":Z
    :cond_31
    const/4 v3, 0x0

    goto :goto_32

    .line 791
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_2e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 794
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v19

    .line 795
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 797
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 801
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 806
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v17

    .line 807
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    if-eqz v17, :cond_32

    const/4 v3, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 808
    :cond_32
    const/4 v3, 0x0

    goto :goto_33

    .line 813
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_30
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 816
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 822
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    .line 823
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 829
    .local v5, "_arg1":Landroid/os/RemoteCallback;
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 830
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 819
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Landroid/os/RemoteCallback;
    .end local v6    # "_arg2":I
    :cond_33
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 826
    :cond_34
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/os/RemoteCallback;
    goto :goto_35

    .line 836
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_31
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    .line 839
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 845
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 846
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 842
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    :cond_35
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .line 852
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_32
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    .line 855
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 861
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 863
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 864
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v17

    .line 865
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    if-eqz v17, :cond_37

    const/4 v3, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 858
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v17    # "_result":Z
    :cond_36
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_37

    .line 866
    .restart local v5    # "_arg1":I
    .restart local v6    # "_arg2":I
    .restart local v17    # "_result":Z
    :cond_37
    const/4 v3, 0x0

    goto :goto_38

    .line 871
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v17    # "_result":Z
    :sswitch_33
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 875
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 877
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 879
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 881
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 883
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 885
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 887
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 889
    .local v11, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    const/4 v12, 0x1

    .line 891
    .local v12, "_arg8":Z
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg9":I
    move-object/from16 v3, p0

    .line 892
    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIIZI)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 889
    .end local v12    # "_arg8":Z
    .end local v13    # "_arg9":I
    :cond_38
    const/4 v12, 0x0

    goto :goto_39

    .line 898
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":I
    :sswitch_34
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 902
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 904
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 906
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 908
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 910
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 912
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 914
    .restart local v10    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 916
    .restart local v11    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 918
    .local v12, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_39

    const/4 v13, 0x1

    .line 920
    .local v13, "_arg9":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg10":I
    move-object/from16 v3, p0

    .line 921
    invoke-virtual/range {v3 .. v14}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordStateUsingBackup(IIIIIIIIIZI)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 918
    .end local v13    # "_arg9":Z
    .end local v14    # "_arg10":I
    :cond_39
    const/4 v13, 0x0

    goto :goto_3a

    .line 927
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":I
    .end local v12    # "_arg8":I
    :sswitch_35
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 931
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 932
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordStateReusingExisting(II)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 938
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_36
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 941
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 947
    .end local v4    # "_arg0":I
    :sswitch_37
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 950
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 956
    .end local v4    # "_arg0":I
    :sswitch_38
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 960
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 961
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 962
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    if-eqz v17, :cond_3a

    const/4 v3, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 963
    :cond_3a
    const/4 v3, 0x0

    goto :goto_3b

    .line 968
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_39
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 971
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v17

    .line 972
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v17, :cond_3b

    const/4 v3, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 973
    :cond_3b
    const/4 v3, 0x0

    goto :goto_3c

    .line 978
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_3a
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwner()Ljava/lang/String;

    move-result-object v17

    .line 980
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 982
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 986
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v17

    .line 988
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 990
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 994
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 997
    .local v4, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert([B)Z

    move-result v17

    .line 998
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    if-eqz v17, :cond_3c

    const/4 v3, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 999
    :cond_3c
    const/4 v3, 0x0

    goto :goto_3d

    .line 1004
    .end local v4    # "_arg0":[B
    .end local v17    # "_result":Z
    :sswitch_3d
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1007
    .restart local v4    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCert([B)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1013
    .end local v4    # "_arg0":[B
    :sswitch_3e
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3d

    .line 1016
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1022
    .local v4, "_arg0":Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1023
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNfcAllowed(Landroid/content/ComponentName;I)Z

    move-result v17

    .line 1024
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    if-eqz v17, :cond_3e

    const/4 v3, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1026
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1019
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :cond_3d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    .line 1025
    .restart local v5    # "_arg1":I
    .restart local v17    # "_result":Z
    :cond_3e
    const/4 v3, 0x0

    goto :goto_3f

    .line 1030
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_3f
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    .line 1033
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1039
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    const/4 v5, 0x1

    .line 1041
    .local v5, "_arg1":Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1042
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNfcQuality(Landroid/content/ComponentName;ZI)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":Z
    .end local v6    # "_arg2":I
    :cond_3f
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    .line 1039
    :cond_40
    const/4 v5, 0x0

    goto :goto_41

    .line 1048
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_40
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    .line 1051
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1057
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 1059
    .restart local v15    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1060
    .restart local v6    # "_arg2":I
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v4, v1, v2, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSkipInactivityTimeout(Landroid/content/ComponentName;JI)V

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_arg2":I
    .end local v15    # "_arg1":J
    :cond_41
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_42

    .line 1066
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_41
    const-string v3, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    .line 1069
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1075
    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1076
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSkipInactivityTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v17

    .line 1077
    .local v17, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    move-object/from16 v0, p3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1079
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    .end local v5    # "_arg1":I
    .end local v17    # "_result":J
    :cond_42
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    .line 42
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
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
