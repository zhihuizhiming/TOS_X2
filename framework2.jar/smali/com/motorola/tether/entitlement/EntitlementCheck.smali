.class public Lcom/motorola/tether/entitlement/EntitlementCheck;
.super Ljava/lang/Object;
.source "EntitlementCheck.java"


# static fields
.field private static final APN_CHECK_STATE:Ljava/lang/String; = "APN_CHECK_STATE"

.field public static final BLUETOOTH_TETHERING:I = 0x2

.field private static final DBG:Z = true

.field public static final ENTITLEMENT_CHECK_STATE_NONE:I = 0x0

.field public static final EXTRA_TETHER_DATA:Ljava/lang/String; = "TETHER_DATA"

.field public static final EXTRA_TETHER_TYPE:Ljava/lang/String; = "TETHER_TYPE"

.field public static final INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EntitlementCheck"

.field public static final USB_TETHERING:I = 0x1

.field public static final WIFI_TETHERING:I

.field private static sMccMncList:[Ljava/lang/String;

.field private static sProvisionApp:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    .line 51
    sput-object v0, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static checkEntitlement(Landroid/content/Context;ILandroid/os/Parcelable;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tetherType"    # I
    .param p2, "tetherData"    # Landroid/os/Parcelable;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    const-string v2, "EntitlementCheck"

    const-string v3, "Inside checkEntitlement"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "EntitlementCheck"

    const-string v3, "Inside isProvisioningNeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p3, :cond_3

    .line 89
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->isValidSim(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->isEntitlementCheckStateSuccess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-static {p0, v1, p1}, Lcom/motorola/tether/entitlement/EntitlementCheck;->setEntitlementCheckState(Landroid/content/Context;ZI)V

    :cond_1
    :goto_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 95
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/motorola/tether/entitlement/EntitlementCheck;->startProvisioning(Landroid/content/Context;ILandroid/os/Parcelable;)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {p0, v0, p1}, Lcom/motorola/tether/entitlement/EntitlementCheck;->setEntitlementCheckState(Landroid/content/Context;ZI)V

    goto :goto_1
.end method

.method public static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 225
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 226
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 231
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 225
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 231
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static final getEntitlementCheckState(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "APN_CHECK_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isEntitledForBTTethering(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/motorola/tether/entitlement/EntitlementCheck;->checkEntitlement(Landroid/content/Context;ILandroid/os/Parcelable;Z)Z

    move-result v0

    return v0
.end method

.method public static isEntitledForUsbTethering(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 58
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/motorola/tether/entitlement/EntitlementCheck;->checkEntitlement(Landroid/content/Context;ILandroid/os/Parcelable;Z)Z

    move-result v0

    return v0
.end method

.method public static isEntitledForWifiTethering(Landroid/content/Context;Landroid/os/Parcelable;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiConfig"    # Landroid/os/Parcelable;
    .param p2, "enable"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/tether/entitlement/EntitlementCheck;->checkEntitlement(Landroid/content/Context;ILandroid/os/Parcelable;Z)Z

    move-result v0

    return v0
.end method

.method public static final isEntitlementCheckStateSuccess(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->getEntitlementCheckState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 106
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    sget-object v1, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    .line 113
    :cond_2
    sget-object v1, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 124
    sget-object v1, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {p0, v0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->needsEntitlementCheckForMccMnc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isValidSim(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 132
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 135
    :cond_0
    const-string v2, "EntitlementCheck"

    const-string v3, "NOT A VALID SIM :mcc-mnc is null or too small"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v2, 0x0

    .line 138
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static needsEntitlementCheckForMccMnc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 142
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->isValidSim(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 143
    const-string v10, "EntitlementCheck"

    const-string v11, "needsEntitlementCheckForMccMnc: Not a valid SIM."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :goto_0
    return v9

    .line 149
    :cond_1
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 151
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "simOperator":Ljava/lang/String;
    sget-object v11, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;

    if-nez v11, :cond_2

    .line 155
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 156
    .local v7, "targetContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "mcc_mnc_list"

    const-string v13, "array"

    invoke-virtual {v11, v12, v13, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 157
    .local v5, "resId":I
    if-eqz v5, :cond_3

    .line 158
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v5    # "resId":I
    .end local v7    # "targetContext":Landroid/content/Context;
    :cond_2
    :goto_1
    sget-object v11, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;

    array-length v11, v11

    if-eqz v11, :cond_0

    .line 174
    sget-object v0, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 175
    .local v4, "mccmnc":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mccmnc":Ljava/lang/String;
    .restart local v5    # "resId":I
    .restart local v7    # "targetContext":Landroid/content/Context;
    :cond_3
    :try_start_1
    const-string v11, "EntitlementCheck"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find resource mcc_mnc_list in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    sput-object v11, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    .end local v5    # "resId":I
    .end local v7    # "targetContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "EntitlementCheck"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find the application "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    new-array v11, v10, [Ljava/lang/String;

    sput-object v11, Lcom/motorola/tether/entitlement/EntitlementCheck;->sMccMncList:[Ljava/lang/String;

    goto :goto_1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_4
    move v9, v10

    .line 179
    goto/16 :goto_0
.end method

.method public static final resetEntitlementCheckState(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    const-string v0, "EntitlementCheck"

    const-string v1, "resetEntitlementCheckState."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "APN_CHECK_STATE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    return-void
.end method

.method static setEntitlementCheckState(Landroid/content/Context;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "success"    # Z
    .param p2, "tetherType"    # I

    .prologue
    .line 206
    packed-switch p2, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->getEntitlementCheckState(Landroid/content/Context;)I

    move-result v2

    .line 211
    .local v2, "oldState":I
    const/4 v3, 0x1

    shl-int v0, v3, p2

    .line 212
    .local v0, "mask":I
    if-eqz p1, :cond_1

    or-int v1, v2, v0

    .line 213
    .local v1, "newState":I
    :goto_1
    const-string v3, "EntitlementCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEntitlementCheckState: old state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mask= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eq v1, v2, :cond_0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "APN_CHECK_STATE"

    invoke-static {v3, v4, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 212
    .end local v1    # "newState":I
    :cond_1
    xor-int/lit8 v3, v0, -0x1

    and-int v1, v2, v3

    goto :goto_1

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static startProvisioning(Landroid/content/Context;ILandroid/os/Parcelable;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tetherType"    # I
    .param p2, "tetherData"    # Landroid/os/Parcelable;

    .prologue
    .line 183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/motorola/tether/entitlement/EntitlementCheck;->sProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    if-eqz p2, :cond_0

    .line 187
    const-string v2, "TETHER_DATA"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "EntitlementCheck"

    const-string v3, "Failed to launch entitlement check activity: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static turnOffAllTethering(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->resetEntitlementCheckState(Landroid/content/Context;)V

    .line 250
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->turnOffBluetoothTethering(Landroid/content/Context;)V

    .line 252
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->turnOffUsbTethering(Landroid/content/Context;)V

    .line 254
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->turnOffWifiTethering(Landroid/content/Context;)V

    .line 256
    return-void
.end method

.method private static turnOffBluetoothTethering(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const-string v2, "EntitlementCheck"

    const-string v3, "turnOffBluetoothTethering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 262
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 263
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 264
    new-instance v2, Lcom/motorola/tether/entitlement/EntitlementCheck$1;

    invoke-direct {v2, v1, v0}, Lcom/motorola/tether/entitlement/EntitlementCheck$1;-><init>(Landroid/net/ConnectivityManager;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 286
    :cond_0
    return-void
.end method

.method private static turnOffUsbTethering(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const-string v2, "EntitlementCheck"

    const-string v3, "turnOffUsbTethering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 291
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/tether/entitlement/EntitlementCheck;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "usbIface":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 293
    const-string v2, "EntitlementCheck"

    const-string v3, "USB Tethering was ON. Turning OFF."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 297
    :cond_0
    return-void
.end method

.method private static turnOffWifiTethering(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    const-string v3, "EntitlementCheck"

    const-string v4, "turnOffWifiTethering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 302
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v3, "EntitlementCheck"

    const-string v4, "Wifi Tethering was ON. Turn Off AP and restore Wifi if applicable."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 314
    :goto_1
    if-ne v2, v6, :cond_0

    .line 315
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 316
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 311
    :catch_0
    move-exception v3

    goto :goto_1
.end method
