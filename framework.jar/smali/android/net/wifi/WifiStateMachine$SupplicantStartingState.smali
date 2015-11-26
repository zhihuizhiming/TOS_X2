.class Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 3263
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private initializeWpsDetails()V
    .locals 4

    .prologue
    .line 3266
    const-string/jumbo v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3267
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3268
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set device name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3270
    :cond_0
    const-string/jumbo v1, "ro.product.manufacturer"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3271
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setManufacturer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3272
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set manufacturer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3274
    :cond_1
    const-string/jumbo v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3275
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setModelName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3276
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set model name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3278
    :cond_2
    const-string/jumbo v1, "ro.product.model"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3279
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setModelNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3280
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set model number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3282
    :cond_3
    const-string/jumbo v1, "ro.serialno"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3283
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNative;->setSerialNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3284
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3286
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    const-string/jumbo v2, "physical_display virtual_push_button"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3287
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Failed to set WPS config methods"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3289
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3290
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set primary device type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$7700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$7800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3292
    :cond_6
    const/4 v1, 0x0

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mWiFiConnectedState:Z

    .line 3293
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 3297
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3363
    :goto_0
    return v2

    .line 3299
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Supplicant connection established"

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$7900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3300
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x3

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3301
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$8002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3304
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v2

    const v4, 0x2006f

    invoke-virtual {v2, v4}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 3306
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$8202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 3307
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$8302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3308
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I
    invoke-static {v2, v6}, Landroid/net/wifi/WifiStateMachine;->access$8402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3310
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 3311
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 3312
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->initializeWpsDetails()V

    .line 3314
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 3316
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e00a2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3319
    .local v1, "retryCount":I
    if-lez v1, :cond_0

    .line 3320
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiNative;->setEapPreloadedRetryCount(I)Z

    .line 3322
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1040655

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3324
    .local v0, "realm":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "@0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3325
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiNative;->setEapRealm(Ljava/lang/String;)Ljava/lang/String;

    .line 3329
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiScanMovementListener:Landroid/net/wifi/MotWifiScanMovementListener;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/MotWifiScanMovementListener;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/MotWifiScanMovementListener;->registerSensorHubMovement()V

    .line 3331
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .end local v0    # "realm":Ljava/lang/String;
    .end local v1    # "retryCount":I
    :goto_1
    move v2, v3

    .line 3363
    goto/16 :goto_0

    .line 3334
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8004(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_2

    .line 3335
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v4, "Failed to setup control channel, restart supplicant"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3336
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5900(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 3337
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3338
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x2000b

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 3340
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times to start supplicant, unload driver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$9300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3342
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->access$8002(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3343
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x4

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$6100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3344
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3358
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$9500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 3297
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
