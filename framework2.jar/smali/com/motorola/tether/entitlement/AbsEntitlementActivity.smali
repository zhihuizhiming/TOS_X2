.class public abstract Lcom/motorola/tether/entitlement/AbsEntitlementActivity;
.super Landroid/app/Activity;
.source "AbsEntitlementActivity.java"


# static fields
.field private static DEBUG:Z = false

.field protected static final FRAMEWORK_INTENT_REASON:Ljava/lang/String; = "reason"

.field protected static final HOME_KEY:Ljava/lang/String; = "homekey"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBtManager:Landroid/bluetooth/BluetoothManager;

.field private mCloseSystemDialogsIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field protected mTetherType:I

.field protected mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "AbsEntitlementAct"

    sput-object v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    .line 51
    iput-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    new-instance v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$1;-><init>(Lcom/motorola/tether/entitlement/AbsEntitlementActivity;)V

    iput-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 70
    iput-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCloseSystemDialogsIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/tether/entitlement/AbsEntitlementActivity;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/tether/entitlement/AbsEntitlementActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method protected handleEntitlementCheckFailure()V
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 269
    :cond_0
    return-void
.end method

.method protected abstract isEntitlementSuccess()Z
.end method

.method protected needsEntitlementCheck()Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 181
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 183
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "simOperator":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_3

    .line 185
    :cond_0
    sget-boolean v8, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    const-string v10, "SIM operator is null or too small"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v8, v9

    .line 205
    :cond_2
    :goto_0
    return v8

    .line 189
    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "mcc_mnc_list"

    const-string v12, "array"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 190
    .local v5, "resId":I
    if-eqz v5, :cond_2

    .line 191
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "items":[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v10, v3

    if-eqz v10, :cond_2

    .line 196
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v2, v0, v1

    .line 197
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "item":Ljava/lang/String;
    :cond_4
    move v8, v9

    .line 205
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 78
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 81
    const-string v3, "TETHER_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v3, "TETHER_TYPE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    .line 84
    :cond_0
    const-string v3, "TETHER_DATA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    if-nez v3, :cond_1

    .line 86
    const-string v3, "TETHER_DATA"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iput-object v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 95
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->isValidSim(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 108
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->needsEntitlementCheck()Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->isEntitlementCheckStateSuccess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 120
    const/4 v3, 0x1

    iget v4, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    invoke-static {p0, v3, v4}, Lcom/motorola/tether/entitlement/EntitlementCheck;->setEntitlementCheckState(Landroid/content/Context;ZI)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 125
    :cond_4
    new-instance v3, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$2;

    invoke-direct {v3, p0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity$2;-><init>(Lcom/motorola/tether/entitlement/AbsEntitlementActivity;)V

    iput-object v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCloseSystemDialogsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "filterHome":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCloseSystemDialogsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCm:Landroid/net/ConnectivityManager;

    .line 142
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    const-string v3, "bluetooth"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothManager;

    iput-object v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBtManager:Landroid/bluetooth/BluetoothManager;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCloseSystemDialogsIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCloseSystemDialogsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 166
    .local v0, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_2

    .line 167
    sget-boolean v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    const-string v2, "Closing the PAN profile proxy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBtManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 170
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 153
    iget v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    sget-boolean v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart: get BluetoothPANProfile proxy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBtManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 158
    :cond_1
    return-void
.end method

.method protected restartTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    iget v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    packed-switch v1, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 254
    .local v0, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setResultAndFinish()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 215
    sget-boolean v3, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    const-string v4, "Inside setResultAndFinish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    sget-boolean v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    const-string v2, "setResultAndFinish called while activity is already finishing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->isEntitlementSuccess()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    .line 222
    .local v0, "resultCode":I
    :goto_1
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget v3, p0, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->mTetherType:I

    invoke-static {p0, v1, v3}, Lcom/motorola/tether/entitlement/EntitlementCheck;->setEntitlementCheckState(Landroid/content/Context;ZI)V

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 224
    sget-boolean v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    const-string v3, "Inside setResultAndFinish Calling package null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    if-ne v0, v2, :cond_8

    .line 233
    invoke-virtual {p0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->restartTethering()V

    .line 238
    :cond_5
    :goto_2
    sget-boolean v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->DEBUG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entitlement state just before call to setResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->getEntitlementCheckState(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v0    # "resultCode":I
    :cond_7
    move v0, v1

    .line 221
    goto :goto_1

    .line 235
    .restart local v0    # "resultCode":I
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/tether/entitlement/AbsEntitlementActivity;->handleEntitlementCheckFailure()V

    goto :goto_2
.end method
