.class Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyCallHelper"
.end annotation


# static fields
.field private static final DELAY:I = 0x7d0

.field private static final EVENT_EMERGENCY_CALL_END:I = 0x1


# instance fields
.field private mECM:Z

.field private mEmergencyCall:Z

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTurnOffWifiOnECM:Z

.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2429
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2394
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z

    .line 2395
    iput-boolean v4, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mEmergencyCall:Z

    .line 2398
    new-instance v2, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$1;-><init>(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2415
    new-instance v2, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;-><init>(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    .line 2431
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mTurnOffWifiOnECM:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    :goto_0
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z

    .line 2438
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmergencyCallHelper: mTurnOffWifiOnECM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mTurnOffWifiOnECM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mECM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mTurnOffWifiOnECM:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isWifiDisabledByEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2440
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->enableWifi(Z)V

    .line 2442
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2444
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2445
    return-void

    .line 2433
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 2434
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mTurnOffWifiOnECM:Z

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    .prologue
    .line 2389
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isInECM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    .prologue
    .line 2389
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 2389
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mECM:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    .prologue
    .line 2389
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method private isInECM()Z
    .locals 8

    .prologue
    .line 2504
    const/4 v4, 0x0

    .line 2505
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    .line 2506
    .local v3, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 2507
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v5, v2, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 2508
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 2509
    .local v1, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2510
    const/4 v4, 0x1

    .line 2511
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmergencyCallHelper.isInECM: phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in ECM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2515
    .end local v1    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmergencyCallHelper.isInECM: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    return v4
.end method

.method private isInEmergencyCall()Z
    .locals 8

    .prologue
    .line 2533
    const/4 v4, 0x0

    .line 2534
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    .line 2535
    .local v3, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 2536
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v5, v2, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 2537
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 2538
    .local v1, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2539
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmergencyCallHelper.isInEmergencyCall: found emergency call in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    const/4 v4, 0x1

    goto :goto_0

    .line 2545
    .end local v1    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmergencyCallHelper.isInEmergencyCall: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    return v4
.end method

.method private isWifiDisabledByEmergencyCall()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2520
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_disabled_by_ecm"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2522
    .local v0, "ret":Z
    :goto_0
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmergencyCallHelper.isWifiDisabledByEmergencyCall: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    return v0

    .end local v0    # "ret":Z
    :cond_0
    move v0, v1

    .line 2520
    goto :goto_0
.end method

.method private setWifiDisabledByEmergencyCall(Z)V
    .locals 3
    .param p1, "yes"    # Z

    .prologue
    .line 2527
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmergencyCallHelper.setWifiDisabledByEmergencyCall: yes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_disabled_by_ecm"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2530
    return-void

    .line 2528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableMobileData(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 2490
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmergencyCallHelper.enableMobileData: enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    .line 2492
    .local v3, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    move-object v1, v2

    .line 2493
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 2494
    .local v1, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v4, :cond_0

    .line 2496
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmergencyCallHelper.enableMobileData: on="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    iget-object v4, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    goto :goto_0

    .line 2501
    .end local v1    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public enableWifi(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 2477
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmergencyCallHelper.enableWifi enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2480
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_1

    .line 2481
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_1

    .line 2482
    # getter for: Lcom/android/internal/telephony/CallManager;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableWifi: do enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2484
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->setWifiDisabledByEmergencyCall(Z)V

    .line 2487
    :cond_1
    return-void

    .line 2484
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onExitECM()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2468
    const-string v0, "CallManager"

    const-string v1, "EmergencyCallHelper.onExitECM E"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mTurnOffWifiOnECM:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isWifiDisabledByEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2470
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->enableWifi(Z)V

    .line 2472
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->enableMobileData(Z)V

    .line 2473
    const-string v0, "CallManager"

    const-string v1, "EmergencyCallHelper.onExitECM X"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    return-void
.end method

.method public onPrecisePhoneStateChange()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2448
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isInEmergencyCall()Z

    move-result v0

    .line 2449
    .local v0, "emergency":Z
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EmergencyCallHelper.onPrecisePhoneStateChange: emergency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmergencyCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mEmergencyCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mEmergencyCall:Z

    if-eq v0, v1, :cond_1

    .line 2452
    if-eqz v0, :cond_2

    .line 2453
    const-string v1, "CallManager"

    const-string v2, "EmergencyCallHelper.onPrecisePhoneStateChange: emergency call"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->enableMobileData(Z)V

    .line 2455
    iget-boolean v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mTurnOffWifiOnECM:Z

    if-eqz v1, :cond_0

    .line 2456
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->enableWifi(Z)V

    .line 2463
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mEmergencyCall:Z

    .line 2465
    :cond_1
    return-void

    .line 2459
    :cond_2
    const-string v1, "CallManager"

    const-string v2, "EmergencyCallHelper.onPrecisePhoneStateChange: emergency call ends"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2461
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
