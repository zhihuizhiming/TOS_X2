.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$RoamingType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRoaming:Z

.field private mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mNetworkId:I

.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mRilDataRadioTechnology:I

.field private mRilVoiceRadioTechnology:I

.field private mRoaming:Z

.field private mSystemId:I

.field private mVoiceRegState:I

.field private mVoiceRoaming:Z

.field private mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 172
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 177
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 178
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 199
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 172
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 177
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 178
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 199
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->getRoamingType(I)Landroid/telephony/ServiceState$RoamingType;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->getRoamingType(I)Landroid/telephony/ServiceState$RoamingType;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 293
    return-void

    :cond_0
    move v0, v2

    .line 269
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 271
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 273
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 282
    goto :goto_3

    :cond_4
    move v0, v2

    .line 285
    goto :goto_4

    :cond_5
    move v1, v2

    .line 292
    goto :goto_5
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 172
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 177
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 178
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 199
    iput v1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 231
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 232
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 993
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final getRoamingType(I)Landroid/telephony/ServiceState$RoamingType;
    .locals 1
    .param p0, "intType"    # I

    .prologue
    .line 372
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 373
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    .line 381
    :goto_0
    return-object v0

    .line 375
    :cond_0
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->DOMESTIC:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 376
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->DOMESTIC:Landroid/telephony/ServiceState$RoamingType;

    goto :goto_0

    .line 378
    :cond_1
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 379
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

    goto :goto_0

    .line 381
    :cond_2
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    goto :goto_0
.end method

.method public static isCdma(I)Z
    .locals 1
    .param p0, "radioTechnology"    # I

    .prologue
    .line 1192
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsm(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v0, 0x1

    .line 1178
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/16 v1, 0x11

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 214
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 215
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 216
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 1103
    packed-switch p1, :pswitch_data_0

    .line 1138
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1105
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1107
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1109
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1111
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1113
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 1115
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 1118
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 1120
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1122
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 1124
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 1126
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 1128
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 1130
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 1132
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 1134
    :pswitch_e
    const/16 v0, 0x10

    goto :goto_0

    .line 1136
    :pswitch_f
    const/16 v0, 0x11

    goto :goto_0

    .line 1103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "rt"    # I

    .prologue
    .line 706
    packed-switch p0, :pswitch_data_0

    .line 762
    const-string v0, "Unexpected"

    .line 763
    .local v0, "rtString":Ljava/lang/String;
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return-object v0

    .line 708
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Unknown"

    .line 709
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 711
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "GPRS"

    .line 712
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 714
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "EDGE"

    .line 715
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 717
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "UMTS"

    .line 718
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 720
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CDMA-IS95A"

    .line 721
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 723
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "CDMA-IS95B"

    .line 724
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 726
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string v0, "1xRTT"

    .line 727
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 729
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string v0, "EvDo-rev.0"

    .line 730
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 732
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string v0, "EvDo-rev.A"

    .line 733
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 735
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string v0, "HSDPA"

    .line 736
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 738
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HSUPA"

    .line 739
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 741
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string v0, "HSPA"

    .line 742
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 744
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string v0, "EvDo-rev.B"

    .line 745
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 747
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string v0, "eHRPD"

    .line 748
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 750
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string v0, "LTE"

    .line 751
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 753
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string v0, "HSPAP"

    .line 754
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 756
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string v0, "GSM"

    .line 757
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 759
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string v0, "TD-SCDMA"

    .line 760
    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 706
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
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1003
    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1004
    const-string v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1005
    const-string/jumbo v0, "roaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 1007
    const-string/jumbo v0, "voiceRoaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    .line 1008
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->getRoamingType(I)Landroid/telephony/ServiceState$RoamingType;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 1009
    const-string v0, "dataRoaming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    .line 1010
    const-string v0, "dataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->getRoamingType(I)Landroid/telephony/ServiceState$RoamingType;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 1011
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 1012
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 1013
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 1014
    const-string v0, "data-operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1015
    const-string v0, "data-operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1016
    const-string v0, "data-operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1018
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1019
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1020
    const-string v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1021
    const-string v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1022
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1023
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1024
    const-string v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1025
    const-string v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1026
    const-string v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1027
    return-void
.end method

.method private setNullState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 800
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setNullState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 802
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 803
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 805
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    .line 806
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 807
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    .line 808
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->UNKNOWN:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 809
    iput-object v5, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 810
    iput-object v5, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 811
    iput-object v5, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 812
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 813
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 814
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 816
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 817
    iput v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 818
    iput v3, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 819
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 820
    iput v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 821
    iput v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 822
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 823
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 824
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 825
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 826
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 827
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 235
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 236
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 237
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mRoaming:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 239
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    .line 240
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 241
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 242
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mDataRoaming:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    .line 243
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 250
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 251
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 252
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 253
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 254
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 255
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 256
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 257
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 258
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 259
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 260
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 261
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 660
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_1

    .line 669
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :cond_0
    :goto_0
    return v3

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 669
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_1
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mRoaming:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1036
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    const-string v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1038
    const-string/jumbo v0, "roaming"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    const-string/jumbo v0, "voiceRoaming"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1041
    const-string/jumbo v0, "voiceRoamingType"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1042
    const-string v0, "dataRoaming"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1043
    const-string v0, "dataRoamingType"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1044
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1052
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1053
    const-string v0, "dataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1054
    const-string v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1055
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1056
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1057
    const-string v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1058
    const-string v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1059
    const-string v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1060
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    .prologue
    .line 1163
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public getDataRoaming()Z
    .locals 1

    .prologue
    .line 1223
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    return v0
.end method

.method public getDataRoamingType()Landroid/telephony/ServiceState$RoamingType;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    return-object v0
.end method

.method public getInternationalRoaming()Z
    .locals 2

    .prologue
    .line 483
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->INTERNATIONAL:Landroid/telephony/ServiceState$RoamingType;

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsManualSelection()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1147
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTechnology()I
    .locals 2

    .prologue
    .line 1098
    const-string v0, "PHONE"

    const-string v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    return v0
.end method

.method public getVoiceRoamingType()Landroid/telephony/ServiceState$RoamingType;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    :goto_5
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v2

    :goto_7
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v2

    :goto_8
    add-int/2addr v3, v0

    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v2

    :goto_9
    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    add-int/2addr v0, v3

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v3, :cond_a

    :goto_a
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 896
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 897
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 903
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 904
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 910
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 911
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 889
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 890
    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    .prologue
    .line 1075
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1076
    return-void

    .line 1075
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 977
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 978
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 948
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 949
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 950
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 951
    return-void
.end method

.method public setDataRegState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 850
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 851
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setDataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 1206
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    .line 1207
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 1208
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-nez v0, :cond_1

    .line 1209
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 1213
    :cond_1
    return-void

    .line 1207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataRoamingType(Landroid/telephony/ServiceState$RoamingType;)V
    .locals 0
    .param p1, "type"    # Landroid/telephony/ServiceState$RoamingType;

    .prologue
    .line 413
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 414
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    .prologue
    .line 882
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 883
    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    .prologue
    .line 982
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 983
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 960
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 961
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 962
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 921
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 922
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 923
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 924
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 925
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 926
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 927
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 3
    .param p1, "rt"    # I

    .prologue
    .line 1069
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1070
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setDataRadioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 1064
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1065
    return-void
.end method

.method public setRoaming(Z)V
    .locals 0
    .param p1, "roaming"    # Z

    .prologue
    .line 860
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 861
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 839
    const-string v0, "PHONE"

    const-string v1, "[ServiceState] setState deprecated use setVoiceRegState()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void
.end method

.method public setStateOff()V
    .locals 1

    .prologue
    .line 834
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 835
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 831
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .prologue
    .line 1080
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1081
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1082
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 969
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 970
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 936
    iput-object p1, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    .line 937
    iput-object p2, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    .line 938
    iput-object p3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 939
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 844
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 845
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServiceState] setVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .prologue
    .line 868
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    .line 869
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    .line 870
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-nez v0, :cond_1

    .line 871
    sget-object v0, Landroid/telephony/ServiceState$RoamingType;->HOME:Landroid/telephony/ServiceState$RoamingType;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 875
    :cond_1
    return-void

    .line 869
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVoiceRoamingType(Landroid/telephony/ServiceState$RoamingType;)V
    .locals 0
    .param p1, "type"    # Landroid/telephony/ServiceState$RoamingType;

    .prologue
    .line 389
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    .line 390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 771
    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "radioTechnology":Ljava/lang/String;
    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "dataRadioTechnology":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "roaming"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voice "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v4}, Landroid/telephony/ServiceState$RoamingType;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v4}, Landroid/telephony/ServiceState$RoamingType;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_3

    const-string v2, "(manual)"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_4

    const-string v2, "CSS supported"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DefRoamInd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EmergOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, "home"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, "voice home"

    goto/16 :goto_1

    :cond_2
    const-string v2, "data home"

    goto/16 :goto_2

    :cond_3
    const-string v2, ""

    goto :goto_3

    :cond_4
    const-string v2, "CSS not supported"

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mRoaming:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mVoiceRoaming:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mDataRoaming:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:Landroid/telephony/ServiceState$RoamingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Landroid/telephony/ServiceState;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    return-void

    :cond_0
    move v0, v2

    .line 298
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 300
    goto :goto_1

    :cond_2
    move v0, v2

    .line 302
    goto :goto_2

    :cond_3
    move v0, v2

    .line 311
    goto :goto_3

    :cond_4
    move v0, v2

    .line 314
    goto :goto_4

    :cond_5
    move v1, v2

    .line 321
    goto :goto_5
.end method
