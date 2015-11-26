.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FALLBACK_BIOMETRIC:I = 0x0

.field public static final FALLBACK_FINGERPRINT:I = 0x2

.field public static final FALLBACK_NFC:I = 0x1

.field public static final FALLBACK_NOTFALLBACK:I = -0x1

.field private static final FINGERPRINT_SENSOR_APP_PACKAGE:Ljava/lang/String; = "com.motorola.fingerprintsensor"

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_FINGERPRINT_FALLBACK:Ljava/lang/String; = "lockscreen.fingerprint_fallback"

.field public static final LOCKSCREEN_NFC_AUTH_FALLBACK:Ljava/lang/String; = "lockscreen.nfc_auth_fallback"

.field public static final LOCKSCREEN_NFC_TAG_ID:Ljava/lang/String; = "lockscreen.nfc_tag_id"

.field public static final LOCKSCREEN_NFC_TAG_SECRET:Ljava/lang/String; = "lockscreen.nfc_tag_secret"

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final MOTOROLA_SIGNATURE_PACKAGE:Ljava/lang/String; = "com.motorola.motosignature.app"

.field public static final NFC_AUTH_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.nfcautheverchosen"

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static volatile sCurrentUserId:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 220
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    .line 222
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 1501
    array-length v1, p0

    .line 1503
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_0

    .line 1512
    const/4 v4, 0x0

    .line 1513
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1515
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 1516
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1517
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1518
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1519
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_0

    .line 1520
    add-int/2addr v4, v3

    .line 1516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1505
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_0
    const-string v6, ""

    .line 1533
    :goto_1
    return-object v6

    .line 1508
    :pswitch_1
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1524
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1526
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 1527
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1528
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_2

    .line 1529
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1533
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 727
    const/4 v0, 0x0

    .line 728
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 729
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 730
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 731
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    const/4 v0, 0x1

    .line 730
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 738
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 739
    const/high16 v4, 0x50000

    .line 747
    :goto_2
    return v4

    .line 741
    :cond_2
    if-eqz v1, :cond_3

    .line 742
    const/high16 v4, 0x40000

    goto :goto_2

    .line 744
    :cond_3
    if-eqz v0, :cond_4

    .line 745
    const/high16 v4, 0x20000

    goto :goto_2

    .line 747
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private deleteFingerprints()V
    .locals 2

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.fingerprintsensor.action.DELETE_FINGERPRINTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.fingerprintsensor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 571
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private disableMotAuthService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1921
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "auth_devices_enabled"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "auth_devices_enabled"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1925
    :cond_0
    return-void
.end method

.method private finishBiometricWeak()V
    .locals 3

    .prologue
    .line 1738
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1742
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1743
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1746
    return-void
.end method

.method private finishFingerprint()V
    .locals 3

    .prologue
    .line 1750
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1751
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.fingerprintsensor"

    const-string v2, "com.motorola.fingerprintsensor.ui.SetupCompleteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1754
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1755
    return-void
.end method

.method private finishNfcAuth(Ljava/lang/String;)V
    .locals 3
    .param p1, "tagId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1876
    const-string v1, "lockscreen.nfcautheverchosen"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1878
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1879
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lockscreen.nfc_auth_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1880
    const-string v1, "com.motorola.nfcauthenticator"

    const-string v2, "com.motorola.nfcauthenticator.NfcRingWizardSetupComplete"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    const-string v1, "lockscreen.nfc_tag_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1883
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1884
    return-void
.end method

.method private getAppWidgets(I)[I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1480
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "lock_screen_appwidget_ids"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1482
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1483
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1484
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1485
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1486
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 1487
    aget-object v0, v3, v6

    .line 1489
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v5

    .line 1491
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v2, 0x0

    .line 1497
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_1
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1459
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1452
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1454
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 1453
    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1611
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1614
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1613
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getSalt()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1151
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1152
    .local v1, "salt":J
    cmp-long v3, v1, v4

    if-nez v3, :cond_0

    .line 1154
    :try_start_0
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 1155
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1156
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1157
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 1637
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1639
    :goto_0
    return-object v1

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isMotorolaCommonApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1321
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.motorola.motosignature.app"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1323
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not signed with Motorola certificate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v1, 0x0

    .line 1326
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNfcAuthEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1810
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1811
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.motorola.nfcauthenticator"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1812
    .local v1, "nfcAuthStatus":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v3, 0x1

    .line 1817
    .end local v1    # "nfcAuthStatus":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 1814
    :catch_0
    move-exception v0

    .line 1815
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Unknow package com.android.facelock"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNfcSettingsEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1930
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "nfc_auth_enabled"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPasswordSimple(Ljava/lang/String;)Z
    .locals 9
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1890
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 1891
    :cond_0
    const/4 v4, 0x1

    .line 1916
    :cond_1
    :goto_0
    return v4

    .line 1893
    :cond_2
    const/4 v1, 0x0

    .line 1894
    .local v1, "hasDigit":Z
    const/4 v2, 0x0

    .line 1895
    .local v2, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1896
    .local v5, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1897
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1898
    const/4 v1, 0x1

    .line 1896
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1900
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 1903
    :cond_4
    if-eqz v2, :cond_5

    if-nez v1, :cond_1

    .line 1906
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1907
    .local v0, "first":C
    const/4 v4, 0x1

    .line 1908
    .local v4, "isSimple":Z
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 1909
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1910
    .local v7, "prev":C
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1911
    .local v6, "next":C
    if-ne v6, v0, :cond_6

    if-eq v7, v6, :cond_7

    :cond_6
    sub-int v8, v6, v0

    if-eq v8, v3, :cond_7

    sub-int v8, v0, v6

    if-eq v8, v3, :cond_7

    .line 1912
    const/4 v4, 0x0

    .line 1913
    goto :goto_0

    .line 1908
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static isSafeModeEnabled()Z
    .locals 1

    .prologue
    .line 1768
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1773
    :goto_0
    return v0

    .line 1770
    :catch_0
    move-exception v0

    .line 1773
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1132
    const/4 v1, 0x0

    .line 1146
    :goto_0
    return-object v1

    .line 1135
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1136
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1137
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 1138
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1139
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1142
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1143
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1144
    .local v1, "hash":[B
    goto :goto_0

    .line 1145
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1146
    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1110
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 1111
    const-string v4, ""

    .line 1120
    :goto_0
    return-object v4

    .line 1113
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1115
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1116
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1117
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1118
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1120
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1473
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1464
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    :goto_0
    return-void

    .line 1465
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1620
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1624
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNfcDeviceSecret([BLjava/lang/String;)V
    .locals 3
    .param p1, "secret"    # [B
    .param p2, "tagId"    # Ljava/lang/String;

    .prologue
    .line 1869
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/widget/ILockSettings;->setNfcDeviceSecret([BILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :goto_0
    return-void

    .line 1870
    :catch_0
    move-exception v0

    .line 1872
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Couldn\'t write NFC TAG SECRET"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1645
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1096
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1097
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1098
    aget-byte v0, v1, v2

    .line 1099
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1101
    .end local v0    # "b":B
    :cond_0
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    .line 1190
    const-string v0, "0123456789ABCDEF"

    .line 1191
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1192
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 1193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    :cond_0
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 753
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 770
    :goto_0
    return-void

    .line 758
    :cond_0
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 759
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 760
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :cond_1
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 766
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePhoneLockStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1654
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1655
    const-string v0, "LockPatternUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    const-string v0, "LockPatternUtils"

    const-string v1, "persist.sys.phonelock.mode=1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    const-string v0, "persist.sys.phonelock.mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    :goto_0
    return-void

    .line 1659
    :cond_1
    const-string v0, "LockPatternUtils"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    const-string v0, "LockPatternUtils"

    const-string v1, "persist.sys.phonelock.mode=0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_2
    const-string v0, "persist.sys.phonelock.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeAppWidgets([I)V
    .locals 4
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1560
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .locals 6
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1564
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1565
    .local v3, "widgets":[I
    if-nez v3, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return v4

    .line 1568
    :cond_1
    if-ltz p2, :cond_0

    array-length v5, v3

    if-gt p2, v5, :cond_0

    .line 1571
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 1572
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 1573
    if-ne p2, v0, :cond_2

    .line 1574
    aput p1, v2, v0

    .line 1575
    add-int/lit8 v0, v0, 0x1

    .line 1577
    :cond_2
    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 1578
    aget v4, v3, v1

    aput v4, v2, v0

    .line 1579
    add-int/lit8 v1, v1, 0x1

    .line 1572
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1582
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 1583
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public canReuseExistingLockAsAlternate(I)Z
    .locals 3
    .param p1, "newPasswordQuality"    # I

    .prologue
    const/4 v1, 0x0

    .line 1946
    const/high16 v2, 0x30000

    if-eq p1, v2, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return v1

    .line 1950
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 1951
    .local v0, "activeQuality":I
    const/high16 v2, 0x10000

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkNfcAuthenticated(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "secret"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1844
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingNfcRing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1850
    :goto_0
    return v1

    .line 1848
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, p2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->checkNfcDeviceSecret([BILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 356
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 358
    :goto_0
    return v2

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 370
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 371
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v5

    .line 376
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 377
    .local v1, "passwordHashLength":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 378
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_0

    .line 381
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 383
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    .line 384
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 386
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 341
    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 343
    :goto_0
    return v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clearLock(Z)V
    .locals 4
    .param p1, "isFallback"    # Z

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 497
    if-nez p1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 503
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 506
    :cond_0
    const/high16 v0, 0x10000

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 508
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 509
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 510
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 511
    return-void
.end method

.method deleteGallery()V
    .locals 3

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method deleteNFCTag()V
    .locals 3

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingNfcRing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1830
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.motorola.nfcauthenticator.DELETE_NFC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1831
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteNfc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1832
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1834
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteTempGallery()V
    .locals 3

    .prologue
    .line 544
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 545
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method public getActivePasswordQuality()I
    .locals 5

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 441
    .local v0, "activePasswordQuality":I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 443
    .local v1, "quality":I
    sparse-switch v1, :sswitch_data_0

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 445
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const/high16 v0, 0x10000

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const v0, 0x8000

    goto :goto_0

    .line 455
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const/high16 v0, 0x20000

    goto :goto_0

    .line 460
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    const/high16 v0, 0x40000

    goto :goto_0

    .line 465
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const/high16 v0, 0x50000

    goto :goto_0

    .line 470
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    const/high16 v0, 0x60000

    goto :goto_0

    .line 476
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isNfcAuthInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const v0, 0x25000

    goto :goto_0

    .line 483
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    const/high16 v0, 0x30000

    goto :goto_0

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x25000 -> :sswitch_6
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
    .end sparse-switch
.end method

.method public getAppWidgets()[I
    .locals 1

    .prologue
    .line 1476
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    .line 303
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 305
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 310
    :goto_0
    return v1

    .line 308
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getFallbackAppWidgetId()I
    .locals 4

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 5

    .prologue
    const-wide/32 v3, 0x10000

    .line 1055
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1059
    .local v0, "quality":I
    const v1, 0x8000

    if-eq v0, v1, :cond_0

    const v1, 0x25000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_1

    .line 1066
    :cond_0
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1071
    :cond_1
    const/high16 v1, 0x70000

    if-eq v0, v1, :cond_2

    const v1, 0x15000

    if-ne v0, v1, :cond_3

    .line 1073
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1074
    const/4 v0, 0x0

    .line 1076
    :cond_3
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 1393
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1394
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1395
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    move-wide v0, v4

    .line 1398
    .end local v0    # "deadline":J
    :cond_1
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1442
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "nextAlarm":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1445
    :cond_0
    const/4 v0, 0x0

    .line 1447
    .end local v0    # "nextAlarm":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 716
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .locals 2

    .prologue
    .line 1763
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .locals 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordSimple()Z
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordSimpleAllowed(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled()Z
    .locals 1

    .prologue
    .line 1792
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1796
    const-string v0, "lockscreen.widgets_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public hasWidgetsEnabledInKeyguard(I)Z
    .locals 3
    .param p1, "userid"    # I

    .prologue
    .line 1782
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets(I)[I

    move-result-object v1

    .line 1783
    .local v1, "widgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1784
    aget v2, v1, v0

    if-lez v2, :cond_0

    .line 1785
    const/4 v2, 0x1

    .line 1788
    :goto_1
    return v2

    .line 1783
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1788
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isBiometricWeakEverChosen()Z
    .locals 2

    .prologue
    .line 430
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1249
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1251
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v2

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1260
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1265
    goto :goto_0
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1286
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1287
    .local v0, "currentFlag":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1335
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1336
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 1338
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v4, "com.motorola.fingerprintsensor"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1343
    :goto_0
    const-string v4, "ro.mot.hw.fingerprint"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    const-string v4, "com.motorola.fingerprintsensor"

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isMotorolaCommonApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v2

    :cond_0
    move v2, v3

    goto :goto_1

    .line 1339
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public isLockPasswordEnabled()Z
    .locals 15

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1203
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1204
    .local v3, "mode":J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1205
    .local v1, "backupMode":J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_0

    cmp-long v8, v3, v11

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_5

    :cond_0
    move v5, v7

    .line 1209
    .local v5, "passwordEnabled":Z
    :goto_0
    cmp-long v8, v1, v13

    if-eqz v8, :cond_1

    cmp-long v8, v1, v11

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_6

    :cond_1
    move v0, v7

    .line 1214
    .local v0, "backupEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingNfcRing()Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingFingerprint()Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v0, :cond_7

    :cond_4
    :goto_2
    return v7

    .end local v0    # "backupEnabled":Z
    .end local v5    # "passwordEnabled":Z
    :cond_5
    move v5, v6

    .line 1205
    goto :goto_0

    .restart local v5    # "passwordEnabled":Z
    :cond_6
    move v0, v6

    .line 1209
    goto :goto_1

    .restart local v0    # "backupEnabled":Z
    :cond_7
    move v7, v6

    .line 1214
    goto :goto_2
.end method

.method public isLockPatternEnabled()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 1228
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    move v0, v1

    .line 1232
    .local v0, "backupEnabled":Z
    :goto_0
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingNfcRing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingFingerprint()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_3
    move v0, v2

    .line 1228
    goto :goto_0

    .restart local v0    # "backupEnabled":Z
    :cond_4
    move v1, v2

    .line 1232
    goto :goto_1
.end method

.method public isLockScreenDisabled()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNfcAuthEverChosen()Z
    .locals 2

    .prologue
    .line 1826
    const-string v0, "lockscreen.nfcautheverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNfcAuthInstalled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1857
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1859
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.motorola.nfcauthenticator"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1861
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isNfcAuthEnabled()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 1865
    :goto_0
    return v3

    .line 1862
    :catch_0
    move-exception v0

    .line 1863
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1865
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isNfcSettingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public isOwnerInfoEnabled()Z
    .locals 2

    .prologue
    .line 720
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPatternEverChosen()Z
    .locals 2

    .prologue
    .line 420
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .locals 2

    .prologue
    .line 1407
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1667
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1668
    .local v2, "mode":J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    move v1, v4

    .line 1669
    .local v1, "isPattern":Z
    :goto_0
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_0
    move v0, v4

    .line 1673
    .local v0, "isPassword":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1675
    .local v4, "secure":Z
    :cond_2
    :goto_2
    return v4

    .end local v0    # "isPassword":Z
    .end local v1    # "isPattern":Z
    .end local v4    # "secure":Z
    :cond_3
    move v1, v5

    .line 1668
    goto :goto_0

    .restart local v1    # "isPattern":Z
    :cond_4
    move v0, v5

    .line 1669
    goto :goto_1

    .restart local v0    # "isPassword":Z
    :cond_5
    move v4, v5

    .line 1673
    goto :goto_2
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1372
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisiblePatternEnabled()Z
    .locals 2

    .prologue
    .line 1304
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1173
    if-nez p1, :cond_0

    .line 1174
    const/4 v2, 0x0

    .line 1186
    :goto_0
    return-object v2

    .line 1176
    :cond_0
    const/4 v0, 0x0

    .line 1177
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1179
    .local v2, "hashed":[B
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1180
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1181
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1182
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1183
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAppWidget(I)Z
    .locals 6
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v3

    .line 1589
    .local v3, "widgets":[I
    array-length v5, v3

    if-nez v5, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return v4

    .line 1593
    :cond_1
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 1594
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 1595
    aget v5, v3, v0

    if-ne v5, p1, :cond_2

    .line 1594
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1597
    :cond_2
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 1601
    aget v5, v3, v0

    aput v5, v2, v1

    .line 1602
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1605
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->writeAppWidgets([I)V

    .line 1606
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportFailedPasswordAttempt()V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 292
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 296
    return-void
.end method

.method public resumeCall()Z
    .locals 2

    .prologue
    .line 1726
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1728
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1729
    const/4 v1, 0x1

    .line 1734
    :goto_0
    return v1

    .line 1731
    :catch_0
    move-exception v1

    .line 1734
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 781
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;II[BLjava/lang/String;)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "fallbackMethod"    # I
    .param p4, "secret"    # [B
    .param p5, "tagId"    # Ljava/lang/String;

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;II[BLjava/lang/String;I)V

    .line 835
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;II[BLjava/lang/String;I)V
    .locals 32
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "fallbackMethod"    # I
    .param p4, "secret"    # [B
    .param p5, "tagId"    # Ljava/lang/String;
    .param p6, "userHandle"    # I

    .prologue
    .line 903
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-interface {v4, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 905
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_9

    .line 906
    if-nez p6, :cond_0

    .line 908
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 911
    :cond_0
    const/4 v5, 0x0

    .line 912
    .local v5, "length":I
    const/4 v6, 0x0

    .line 913
    .local v6, "letters":I
    const/4 v7, 0x0

    .line 914
    .local v7, "uppercase":I
    const/4 v8, 0x0

    .line 915
    .local v8, "lowercase":I
    const/4 v9, 0x0

    .line 916
    .local v9, "numbers":I
    const/4 v10, 0x0

    .line 917
    .local v10, "symbols":I
    const/4 v11, 0x0

    .line 918
    .local v11, "nonletter":I
    const/4 v12, 0x1

    .line 919
    .local v12, "passwordSimple":Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v26

    .line 921
    .local v26, "computedQuality":I
    if-eqz v26, :cond_5

    .line 922
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 923
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_4

    .line 924
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    .line 925
    .local v25, "c":C
    const/16 v4, 0x41

    move/from16 v0, v25

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    move/from16 v0, v25

    if-gt v0, v4, :cond_1

    .line 926
    add-int/lit8 v6, v6, 0x1

    .line 927
    add-int/lit8 v7, v7, 0x1

    .line 923
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 928
    :cond_1
    const/16 v4, 0x61

    move/from16 v0, v25

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    move/from16 v0, v25

    if-gt v0, v4, :cond_2

    .line 929
    add-int/lit8 v6, v6, 0x1

    .line 930
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 931
    :cond_2
    const/16 v4, 0x30

    move/from16 v0, v25

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    move/from16 v0, v25

    if-gt v0, v4, :cond_3

    .line 932
    add-int/lit8 v9, v9, 0x1

    .line 933
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 935
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 936
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 939
    .end local v25    # "c":C
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordSimple(Ljava/lang/String;)Z

    move-result v12

    .line 942
    .end local v28    # "i":I
    :cond_5
    packed-switch p3, :pswitch_data_0

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 998
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 1000
    const-string v4, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1001
    if-eqz v26, :cond_7

    .line 1002
    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move-object v13, v3

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, p6

    invoke-virtual/range {v13 .. v23}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V

    .line 1017
    .end local v5    # "length":I
    .end local v6    # "letters":I
    .end local v7    # "uppercase":I
    .end local v8    # "lowercase":I
    .end local v9    # "numbers":I
    .end local v10    # "symbols":I
    .end local v11    # "nonletter":I
    .end local v12    # "passwordSimple":Z
    :goto_2
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 1018
    .local v29, "passwordHistory":Ljava/lang/String;
    if-nez v29, :cond_6

    .line 1019
    new-instance v29, Ljava/lang/String;

    .end local v29    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v29 .. v29}, Ljava/lang/String;-><init>()V

    .line 1021
    .restart local v29    # "passwordHistory":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v30

    .line 1022
    .local v30, "passwordHistoryLength":I
    if-nez v30, :cond_8

    .line 1023
    const-string v29, ""

    .line 1033
    :goto_3
    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p6

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1040
    .end local v26    # "computedQuality":I
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->updatePhoneLockStatus()V

    .line 1046
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_5
    return-void

    .line 946
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v5    # "length":I
    .restart local v6    # "letters":I
    .restart local v7    # "uppercase":I
    .restart local v8    # "lowercase":I
    .restart local v9    # "numbers":I
    .restart local v10    # "symbols":I
    .restart local v11    # "nonletter":I
    .restart local v12    # "passwordSimple":Z
    .restart local v26    # "computedQuality":I
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 951
    const-string v4, "lockscreen.password_type"

    const-wide/32 v13, 0x8000

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 953
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 956
    const v4, 0x8000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1042
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v5    # "length":I
    .end local v6    # "letters":I
    .end local v7    # "uppercase":I
    .end local v8    # "lowercase":I
    .end local v9    # "numbers":I
    .end local v10    # "symbols":I
    .end local v11    # "nonletter":I
    .end local v12    # "passwordSimple":Z
    .end local v26    # "computedQuality":I
    :catch_0
    move-exception v31

    .line 1044
    .local v31, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save lock password "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 962
    .end local v31    # "re":Landroid/os/RemoteException;
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v5    # "length":I
    .restart local v6    # "letters":I
    .restart local v7    # "uppercase":I
    .restart local v8    # "lowercase":I
    .restart local v9    # "numbers":I
    .restart local v10    # "symbols":I
    .restart local v11    # "nonletter":I
    .restart local v12    # "passwordSimple":Z
    .restart local v26    # "computedQuality":I
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 964
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 966
    const-string v4, "lockscreen.password_type"

    const-wide/32 v13, 0x25000

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 968
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setNfcDeviceSecret([BLjava/lang/String;)V

    .line 971
    const v4, 0x25000

    move/from16 v13, p6

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->finishNfcAuth(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 977
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 979
    const-string v4, "lockscreen.password_type"

    const-wide/32 v13, 0x30000

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 981
    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v13, v14, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishFingerprint()V

    .line 985
    const/high16 v14, 0x30000

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object v13, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, p6

    invoke-virtual/range {v13 .. v24}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateUsingBackup(IIIIIIIIIZI)V

    goto/16 :goto_2

    .line 1007
    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object v13, v3

    move/from16 v23, p6

    invoke-virtual/range {v13 .. v23}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V

    goto/16 :goto_2

    .line 1025
    .end local v5    # "length":I
    .end local v6    # "letters":I
    .end local v7    # "uppercase":I
    .end local v8    # "lowercase":I
    .end local v9    # "numbers":I
    .end local v10    # "symbols":I
    .end local v11    # "nonletter":I
    .end local v12    # "passwordSimple":Z
    .restart local v29    # "passwordHistory":Ljava/lang/String;
    .restart local v30    # "passwordHistoryLength":I
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v27

    .line 1026
    .local v27, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1029
    const/4 v4, 0x0

    move-object/from16 v0, v27

    array-length v13, v0

    mul-int v13, v13, v30

    add-int v13, v13, v30

    add-int/lit8 v13, v13, -0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_3

    .line 1035
    .end local v26    # "computedQuality":I
    .end local v27    # "hash":[B
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :cond_9
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object v13, v3

    move/from16 v23, p6

    invoke-virtual/range {v13 .. v23}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 793
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZI)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 850
    const/4 v3, -0x1

    .line 851
    .local v3, "fallbackMethod":I
    if-eqz p3, :cond_0

    .line 852
    const/4 v3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    move v6, p4

    .line 855
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;II[BLjava/lang/String;I)V

    .line 858
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ[BLjava/lang/String;)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isNfcAuth"    # Z
    .param p5, "secret"    # [B
    .param p6, "tagId"    # Ljava/lang/String;

    .prologue
    .line 808
    const/4 v3, -0x1

    .line 809
    .local v3, "fallbackMethod":I
    if-eqz p4, :cond_1

    .line 810
    const/4 v3, 0x1

    .line 814
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;II[BLjava/lang/String;I)V

    .line 816
    return-void

    .line 811
    :cond_1
    if-eqz p3, :cond_0

    .line 812
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ[BLjava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isNfcAuth"    # Z
    .param p5, "secret"    # [B
    .param p6, "tagId"    # Ljava/lang/String;
    .param p7, "userHandle"    # I

    .prologue
    .line 876
    const/4 v3, -0x1

    .line 877
    .local v3, "fallbackMethod":I
    if-eqz p4, :cond_1

    .line 878
    const/4 v3, 0x1

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 882
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;II[BLjava/lang/String;I)V

    .line 883
    return-void

    .line 879
    :cond_1
    if-eqz p3, :cond_0

    .line 880
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 596
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;I[BLjava/lang/String;)V
    .locals 17
    .param p2, "fallbackMethod"    # I
    .param p3, "secret"    # [B
    .param p4, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v15

    .line 633
    .local v15, "hash":[B
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 635
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    .line 636
    const-string v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 638
    packed-switch p2, :pswitch_data_0

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 689
    const-string v4, "lockscreen.password_type"

    const-wide/32 v5, 0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 690
    const/high16 v4, 0x10000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V

    .line 700
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->updatePhoneLockStatus()V

    .line 705
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_1
    return-void

    .line 641
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 644
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 646
    const-string v4, "lockscreen.password_type"

    const-wide/32 v5, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 647
    const-string v4, "lockscreen.password_type_alternate"

    const-wide/32 v5, 0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 650
    const v4, 0x8000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 702
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v16

    .line 703
    .local v16, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t save lock pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 654
    .end local v16    # "re":Landroid/os/RemoteException;
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteFingerprints()V

    .line 658
    const-string v4, "lockscreen.password_type"

    const-wide/32 v5, 0x25000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 659
    const-string v4, "lockscreen.password_type_alternate"

    const-wide/32 v5, 0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 661
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setNfcDeviceSecret([BLjava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->finishNfcAuth(Ljava/lang/String;)V

    .line 664
    const v4, 0x25000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V

    goto/16 :goto_0

    .line 668
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteNFCTag()V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 670
    const-string v4, "lockscreen.password_type"

    const-wide/32 v5, 0x30000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 671
    const-string v4, "lockscreen.password_type_alternate"

    const-wide/32 v5, 0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishFingerprint()V

    .line 675
    const/high16 v4, 0x30000

    const/high16 v5, 0x10000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v14

    invoke-virtual/range {v3 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateUsingBackup(IIIIIIIIIZI)V

    goto/16 :goto_0

    .line 696
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v3 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIIZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v1, 0x0

    .line 580
    const/4 v0, -0x1

    .line 581
    .local v0, "fallbackMethod":I
    if-eqz p2, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 586
    :cond_0
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I[BLjava/lang/String;)V

    .line 588
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZ[BLjava/lang/String;)V
    .locals 1
    .param p2, "isFallback"    # Z
    .param p3, "isNfcAuth"    # Z
    .param p4, "secret"    # [B
    .param p5, "tagId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZ[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, -0x1

    .line 610
    .local v0, "fallbackMethod":I
    if-eqz p3, :cond_1

    .line 611
    const/4 v0, 0x1

    .line 615
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I[BLjava/lang/String;)V

    .line 616
    return-void

    .line 612
    :cond_1
    if-eqz p2, :cond_0

    .line 613
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savedPasswordExists()Z
    .locals 3

    .prologue
    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists()Z
    .locals 3

    .prologue
    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 1272
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1274
    .local v0, "currentFlag":J
    if-eqz p1, :cond_0

    .line 1275
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 1279
    .local v2, "newFlag":J
    :goto_0
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1280
    return-void

    .line 1277
    .end local v2    # "newFlag":J
    :cond_0
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2    # "newFlag":J
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 299
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    .line 300
    return-void
.end method

.method public setLockMethodReusingExistingLockAsAlternate(I)Z
    .locals 4
    .param p1, "newPasswordQuality"    # I

    .prologue
    .line 1972
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->canReuseExistingLockAsAlternate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    const/4 v0, 0x0

    .line 1986
    :goto_0
    return v0

    .line 1976
    :cond_0
    const-string v0, "lockscreen.password_type_alternate"

    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1979
    const-string v0, "lockscreen.password_type"

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1982
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateReusingExisting(II)V

    .line 1984
    const/high16 v0, 0x30000

    if-ne p1, v0, :cond_1

    .line 1985
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishFingerprint()V

    .line 1986
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1294
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1296
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updatePhoneLockStatus()V

    .line 1298
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .locals 7
    .param p1, "disable"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 520
    const-string v6, "lockscreen.disabled"

    if-eqz p1, :cond_2

    const-wide/16 v2, 0x1

    :goto_0
    invoke-direct {p0, v6, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 522
    const-string v2, "lockscreen.password_type"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 523
    .local v0, "quality":J
    if-nez p1, :cond_0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->disableMotAuthService()V

    .line 528
    :cond_1
    return-void

    .end local v0    # "quality":J
    :cond_2
    move-wide v2, v4

    .line 520
    goto :goto_0
.end method

.method public setLockoutAttemptDeadline()J
    .locals 6

    .prologue
    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1383
    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1384
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 708
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 709
    return-void
.end method

.method public setOwnerInfoEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 712
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 713
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1419
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1420
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1759
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1760
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1311
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1312
    return-void
.end method

.method public setWidgetsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1800
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(ZI)V

    .line 1801
    return-void
.end method

.method public setWidgetsEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1804
    const-string v0, "lockscreen.widgets_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1805
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZZ)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "phoneState"    # I
    .param p3, "shown"    # Z
    .param p4, "showIcon"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1698
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 1699
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1706
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 1708
    const v2, 0x1040311

    .line 1709
    .local v2, "textId":I
    if-eqz p4, :cond_1

    const v1, 0x1080084

    .line 1710
    .local v1, "phoneCallIcon":I
    :goto_0
    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1716
    .end local v1    # "phoneCallIcon":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1717
    .end local v2    # "textId":I
    :goto_2
    return-void

    .line 1701
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .restart local v2    # "textId":I
    :cond_1
    move v1, v3

    .line 1709
    goto :goto_0

    .line 1712
    .end local v2    # "textId":I
    :cond_2
    const v2, 0x1040310

    .line 1713
    .restart local v2    # "textId":I
    if-eqz p4, :cond_3

    const v0, 0x10802d8

    .line 1714
    .local v0, "emergencyIcon":I
    :goto_3
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .end local v0    # "emergencyIcon":I
    :cond_3
    move v0, v3

    .line 1713
    goto :goto_3
.end method

.method public usingBiometricWeak()Z
    .locals 4

    .prologue
    .line 1083
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1085
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingFingerprint()Z
    .locals 5

    .prologue
    .line 1363
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1364
    .local v0, "quality":J
    const-wide/32 v2, 0x30000

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public usingNfcRing()Z
    .locals 4

    .prologue
    .line 1839
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1841
    .local v0, "quality":I
    const v1, 0x25000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeFallbackAppWidgetId(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1543
    return-void
.end method
