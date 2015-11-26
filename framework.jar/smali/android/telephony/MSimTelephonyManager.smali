.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MSimTelephonyManager$1;,
        Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field private static SUB_INVALID:I

.field protected static multiSimConfig:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 118
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    .line 1506
    const/4 v0, 0x4

    sput v0, Landroid/telephony/MSimTelephonyManager;->SUB_INVALID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 104
    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    .line 109
    :goto_0
    const-string/jumbo v1, "telephony.msim.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v1

    sput-object v1, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 112
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    return-void

    .line 106
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string/jumbo v0, "phone_msim"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 1091
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1356
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 1359
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1360
    :catch_0
    move-exception v2

    .line 1365
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 280
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    .line 284
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 266
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 272
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method private getSimResources(I)Landroid/content/res/Resources;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 1457
    new-instance v0, Lcom/motorola/android/content/MSimContext;

    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    .line 1458
    .local v0, "msimContext":Lcom/motorola/android/content/MSimContext;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1460
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1251
    const/4 v1, 0x0

    .line 1252
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1255
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1256
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 1257
    aget-object v1, v2, p1

    .line 1260
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 11
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "subscription"    # I
    .param p3, "useExactMatch"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 870
    if-nez p0, :cond_1

    .line 937
    :cond_0
    :goto_0
    return v7

    .line 879
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 885
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 887
    const-string v5, ""

    .line 891
    .local v5, "numbers":Ljava/lang/String;
    if-nez p2, :cond_5

    const-string/jumbo v1, "ril.ecclist"

    .line 892
    .local v1, "ecclist":Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 893
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 895
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 897
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 899
    const-string/jumbo v9, "ro.ril.ecclist"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 902
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 905
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 908
    .local v2, "emergencyNum":Ljava/lang/String;
    if-nez p3, :cond_4

    const-string v9, "BR"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 909
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v8

    .line 910
    goto :goto_0

    .line 891
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "ecclist":Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ril.ecclist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 913
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "ecclist":Ljava/lang/String;
    .restart local v2    # "emergencyNum":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v8

    .line 914
    goto/16 :goto_0

    .line 905
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 926
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "emergencyNum":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_8
    if-eqz p1, :cond_a

    .line 927
    new-instance v6, Lcom/android/i18n/phonenumbers/ShortNumberUtil;

    invoke-direct {v6}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;-><init>()V

    .line 928
    .local v6, "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    if-eqz p3, :cond_9

    .line 929
    invoke-virtual {v6, p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 931
    :cond_9
    invoke-virtual {v6, p0, p1}, Lcom/android/i18n/phonenumbers/ShortNumberUtil;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 934
    .end local v6    # "util":Lcom/android/i18n/phonenumbers/ShortNumberUtil;
    :cond_a
    if-eqz p3, :cond_c

    .line 935
    const-string v9, "112"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "911"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_b
    move v7, v8

    goto/16 :goto_0

    .line 937
    :cond_c
    const-string v9, "112"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "911"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_d
    move v7, v8

    goto/16 :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscription"    # I

    .prologue
    .line 773
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/MSimTelephonyManager;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;IZ)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscription"    # I
    .param p3, "useExactMatch"    # Z

    .prologue
    .line 832
    const/4 v1, 0x0

    .line 834
    .local v1, "countryIso":Ljava/lang/String;
    const-string v4, "country_detector"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 836
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 848
    .end local v0    # "country":Landroid/location/Country;
    :goto_0
    invoke-static {p0, v1, p2, p3}, Landroid/telephony/MSimTelephonyManager;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v4

    return v4

    .line 839
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 840
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_1

    .line 841
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 845
    :cond_1
    const-string v1, "US"

    goto :goto_0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subscription"    # I

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/MSimTelephonyManager;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 743
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "vmNumber":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v1

    .line 750
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 754
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 1385
    const-string v0, ""

    .line 1386
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1387
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1389
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1390
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1394
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1395
    const-string v2, ""

    .line 1396
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 1397
    aget-object v2, v4, v1

    .line 1399
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    if-eqz v4, :cond_3

    .line 1406
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 1407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1406
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1410
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1214
    const-string v3, ""

    .line 1215
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1216
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1218
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1219
    const-string p2, ""

    .line 1222
    :cond_0
    if-eqz v2, :cond_1

    .line 1223
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1226
    :cond_1
    if-gez p1, :cond_2

    .line 1243
    :goto_0
    return-void

    .line 1228
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 1229
    const-string v4, ""

    .line 1230
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 1231
    aget-object v4, v1, v0

    .line 1233
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1237
    if-eqz v1, :cond_5

    .line 1238
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 1239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1242
    :cond_5
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getActiveSubscriptionsCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1509
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1510
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1515
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 1513
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActiveSubscriptionsCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1514
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1200
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1204
    :goto_0
    return-object v1

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1203
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1204
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 1038
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1044
    :goto_0
    return v1

    .line 1039
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1042
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1044
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 1144
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1149
    :goto_0
    return v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1148
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1149
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 1162
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1167
    :goto_0
    return v1

    .line 1163
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1166
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 1178
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1183
    :goto_0
    return-object v1

    .line 1179
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1182
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1183
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 973
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 978
    :goto_0
    return-object v1

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 976
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 978
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 229
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    .line 242
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 233
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 235
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 239
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getCurrentSubscriptionStatusValue(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1532
    sget v1, Landroid/telephony/MSimTelephonyManager;->SUB_INVALID:I

    .line 1534
    .local v1, "invalidStatus":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    .line 1535
    .local v2, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v2, :cond_0

    .line 1540
    .end local v1    # "invalidStatus":I
    .end local v2    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v1

    .line 1538
    .restart local v1    # "invalidStatus":I
    .restart local v2    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCurrentSubscriptionStatusValue(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1539
    .end local v2    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1540
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1060
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1066
    :goto_0
    return v1

    .line 1061
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1064
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1066
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 422
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 423
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 424
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 434
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 429
    :catch_0
    move-exception v0

    .line 431
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 432
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1081
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1086
    :goto_0
    return v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1085
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1086
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataSubscription()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1546
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1547
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1552
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 1550
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataSubscription()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1551
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1552
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1269
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1273
    :goto_0
    return v1

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1272
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1273
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 210
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 191
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 190
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 654
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getGroupIdLevel1(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 659
    :goto_0
    return-object v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 657
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 659
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 697
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 702
    :goto_0
    return-object v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 700
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 702
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 675
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 680
    :goto_0
    return-object v1

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 678
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 680
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 605
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 611
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 608
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 609
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 611
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 1027
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getMmsUAProfUrl(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x104002e

    .line 1438
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimResources(I)Landroid/content/res/Resources;

    move-result-object v0

    .line 1439
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1447
    :goto_0
    return-object v1

    .line 1441
    :cond_0
    const v1, 0x11100b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1443
    const-string/jumbo v1, "persist.sprint.dm.uaprof"

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1447
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMmsUserAgent(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const v3, 0x104002d

    .line 1419
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimResources(I)Landroid/content/res/Resources;

    move-result-object v0

    .line 1420
    .local v0, "res":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1428
    :goto_0
    return-object v1

    .line 1422
    :cond_0
    const v1, 0x11100b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1424
    const-string/jumbo v1, "persist.sprint.dm.useragent"

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1428
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 718
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getMsisdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 723
    :goto_0
    return-object v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 721
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 723
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 144
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 153
    :goto_0
    return-object v1

    .line 148
    :cond_0
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 150
    :cond_1
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 153
    :cond_2
    sget-object v1, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 349
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 320
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 304
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 379
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 380
    .local v1, "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 381
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 391
    .end local v1    # "iTelephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 389
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 391
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1296
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getOperatorPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1300
    :goto_0
    return v1

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1299
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1300
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "phoneCount":I
    sget-object v1, Landroid/telephony/MSimTelephonyManager$1;->$SwitchMap$android$telephony$MSimTelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_0
    return v0

    .line 168
    :pswitch_0
    const/4 v0, 0x2

    .line 169
    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 259
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1282
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1286
    :goto_0
    return v1

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1285
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1286
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1323
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1327
    :goto_0
    return v1

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1326
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1327
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSMSSubscription()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1558
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1559
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1564
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 1562
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getSMSSubscription()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1563
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1564
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 571
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 545
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 560
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 584
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 589
    :goto_0
    return-object v1

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 587
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 589
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 511
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "prop":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x1

    .line 529
    :goto_0
    return v1

    .line 516
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    const/4 v1, 0x2

    goto :goto_0

    .line 519
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    const/4 v1, 0x3

    goto :goto_0

    .line 522
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 523
    const/4 v1, 0x4

    goto :goto_0

    .line 525
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 526
    const/4 v1, 0x5

    goto :goto_0

    .line 529
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 633
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 638
    :goto_0
    return-object v1

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 636
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 638
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getTuneAway()V
    .locals 2

    .prologue
    .line 1570
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1571
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1578
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return-void

    .line 1574
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getTuneAway()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1575
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1018
    :goto_0
    return-object v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1016
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1018
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 953
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 956
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 958
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 993
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 998
    :goto_0
    return v1

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 996
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 998
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceNetworkType(I)I
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 445
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 446
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 447
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 457
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 455
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 457
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 487
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 493
    :goto_0
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 491
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 493
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isCardAbsentOrError(I)Z
    .locals 3
    .param p1, "cardIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1521
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1522
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1527
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 1525
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isCardAbsentOrError(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1526
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 132
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 333
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 1479
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1481
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1488
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 1486
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isSubActive(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1487
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 1125
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1128
    .local v6, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .end local v6    # "notifyNow":Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 1125
    .end local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 1127
    .restart local v1    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1132
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1130
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setDataSubscription(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1618
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1619
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1626
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return-void

    .line 1622
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setDataSubscription(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1623
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setMobileDataEnabled(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "sub"    # I

    .prologue
    .line 1467
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setMobileDataEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1473
    :goto_0
    return-void

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1470
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1471
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setNetworkTypeAutoSwitch(I)Z
    .locals 3
    .param p1, "subDSS"    # I

    .prologue
    const/4 v1, 0x0

    .line 1496
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setNetworkTypeAutoSwitch(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1500
    :goto_0
    return v1

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1499
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1500
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 1310
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1314
    :goto_0
    return v1

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1313
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1314
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setSMSSubscription(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1606
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1607
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1614
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return-void

    .line 1610
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setSMSSubscription(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1611
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setSubscriptionStatus(IZ)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "activate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1582
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1583
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1588
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 1586
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setSubscriptionStatus(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1587
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setTuneAway(Z)V
    .locals 2
    .param p1, "tuneAway"    # Z

    .prologue
    .line 1594
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 1595
    .local v1, "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-nez v1, :cond_0

    .line 1602
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return-void

    .line 1598
    .restart local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setTuneAway(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1599
    .end local v1    # "telephony":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method
