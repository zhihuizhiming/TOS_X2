.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addCdmaConnectivityService(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1290
    invoke-static {p1}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 1291
    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v1, :cond_0

    .line 1292
    const/4 v2, 0x0

    .line 1294
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "SprintExService"

    const-string v4, "createCdmaConnectivityService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1300
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    .line 1302
    :try_start_1
    const-string v3, "SystemServer"

    const-string v4, "Cdma Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v3, "cdma"

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1309
    :cond_0
    :goto_1
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "starting cdma Service"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1296
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private addConnectivityService(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1265
    invoke-static {p1}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 1266
    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v1, :cond_0

    .line 1267
    const/4 v2, 0x0

    .line 1269
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "SprintExService"

    const-string v4, "createConnectivityService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1275
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    .line 1277
    :try_start_1
    const-string v3, "SystemServer"

    const-string v4, "Lte Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v3, "lte"

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1284
    :cond_0
    :goto_1
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "starting Lte Service"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1272
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private createPixelPipeManagerService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v7, "com.motorola.pixelpipe.PixelPipeManagerService"

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 117
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    move-object v5, v6

    .line 126
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v5

    .line 118
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v3, v5

    .line 119
    .local v3, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 120
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v2, :cond_1

    move-object v5, v6

    goto :goto_0

    .line 121
    :cond_1
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    .line 122
    .local v0, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v7, "Exception = "

    invoke-static {v5, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 126
    goto :goto_0
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    .line 1351
    const-wide/32 v0, 0x20000000

    .line 1353
    .local v0, "MEMORY_SIZE_MIN":J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1354
    .local v2, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1355
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1356
    const/4 v3, 0x0

    .line 1358
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private initializeOMADM(Landroid/content/pm/IPackageManager;Landroid/content/Context;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1314
    const-string v2, "SystemServer"

    const-string v3, "initializeOMADM is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {p2}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 1316
    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-nez v1, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1320
    :cond_0
    :try_start_0
    const-string v2, "OMADM"

    const-string v3, "initialize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/pm/IPackageManager;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startSprintExService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1343
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sprint.extension"

    const-string v3, "com.sprint.extension.SprintExtensionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1345
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1347
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1332
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1335
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1336
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 173

    .prologue
    .line 132
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 135
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 137
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 141
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 145
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v145

    .line 147
    .local v145, "shutdownAction":Ljava/lang/String;
    if-eqz v145, :cond_0

    invoke-virtual/range {v145 .. v145}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 148
    const/4 v7, 0x0

    move-object/from16 v0, v145

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_26

    const/16 v139, 0x1

    .line 151
    .local v139, "reboot":Z
    :goto_0
    invoke-virtual/range {v145 .. v145}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_27

    .line 152
    const/4 v7, 0x1

    invoke-virtual/range {v145 .. v145}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v145

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v138

    .line 157
    .local v138, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v139

    move-object/from16 v1, v138

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 161
    .end local v138    # "reason":Ljava/lang/String;
    .end local v139    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v106

    .line 162
    .local v106, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v106

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    const/16 v105, 0x0

    .line 164
    .local v105, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 166
    .local v33, "headless":Z
    const/16 v112, 0x0

    .line 167
    .local v112, "installer":Lcom/android/server/pm/Installer;
    const/16 v63, 0x0

    .line 168
    .local v63, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v84, 0x0

    .line 169
    .local v84, "contentService":Lcom/android/server/content/ContentService;
    const/16 v114, 0x0

    .line 170
    .local v114, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 171
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v99, 0x0

    .line 172
    .local v99, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v70, 0x0

    .line 173
    .local v70, "battery":Lcom/android/server/BatteryService;
    const/16 v159, 0x0

    .line 174
    .local v159, "vibrator":Lcom/android/server/VibratorService;
    const/16 v65, 0x0

    .line 175
    .local v65, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v122, 0x0

    .line 176
    .local v122, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 177
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 178
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v126, 0x0

    .line 179
    .local v126, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v80, 0x0

    .line 181
    .local v80, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v161, 0x0

    .line 183
    .local v161, "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    const/16 v137, 0x0

    .line 184
    .local v137, "qcCon":Ljava/lang/Object;
    const/16 v169, 0x0

    .line 185
    .local v169, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v167, 0x0

    .line 186
    .local v167, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v144, 0x0

    .line 187
    .local v144, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v132, 0x0

    .line 188
    .local v132, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 189
    .local v5, "context":Landroid/content/Context;
    const/16 v171, 0x0

    .line 190
    .local v171, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v71, 0x0

    .line 191
    .local v71, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v100, 0x0

    .line 192
    .local v100, "dock":Lcom/android/server/DockObserver;
    const/16 v156, 0x0

    .line 193
    .local v156, "usb":Lcom/android/server/usb/UsbService;
    const/16 v142, 0x0

    .line 194
    .local v142, "serial":Lcom/android/server/SerialService;
    const/16 v152, 0x0

    .line 195
    .local v152, "twilight":Lcom/android/server/TwilightService;
    const/16 v154, 0x0

    .line 196
    .local v154, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v140, 0x0

    .line 197
    .local v140, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v128, 0x0

    .line 198
    .local v128, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v77, 0x0

    .line 199
    .local v77, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v111, 0x0

    .line 200
    .local v111, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v148, 0x0

    .line 201
    .local v148, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v124, 0x0

    .line 202
    .local v124, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v82, 0x0

    .line 205
    .local v82, "consumerIr":Lcom/android/server/ConsumerIrService;
    new-instance v172, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v172

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 206
    .local v172, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v172 .. v172}, Landroid/os/HandlerThread;->start()V

    .line 207
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v172 .. v172}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 208
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    const/16 v24, 0x0

    .line 226
    .local v24, "onlyCore":Z
    const/16 v107, 0x0

    .line 231
    .local v107, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v113, Lcom/android/server/pm/Installer;

    invoke-direct/range {v113 .. v113}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .local v113, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/pm/Installer;->ping()Z

    .line 235
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v133, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v133 .. v133}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_64

    .line 237
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v133, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 239
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static/range {v105 .. v105}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_65

    move-result-object v5

    move-object/from16 v4, v133

    .end local v133    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v112, v113

    .line 246
    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 247
    .local v96, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 248
    .local v93, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 249
    .local v91, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 250
    .local v98, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 251
    .local v92, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 252
    .local v97, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 253
    .local v95, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 254
    .local v94, "disableNetwork":Z
    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 257
    .local v90, "disableAtlas":Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_59

    .line 259
    .end local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 261
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v149, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5a

    .line 263
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v149, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v149

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 265
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v125, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 268
    .end local v124    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v125, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_6
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5b

    move-object/from16 v124, v125

    .line 271
    .end local v125    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v124    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 274
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 276
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 277
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 284
    .local v87, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 285
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 v24, 0x1

    .line 292
    :cond_3
    :goto_4
    if-eqz v105, :cond_2a

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v112

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v132

    .line 296
    :try_start_8
    invoke-interface/range {v132 .. v132}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v107

    .line 300
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 302
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 305
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 309
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 314
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v64, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 316
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v64, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_b
    const-string v7, "account"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5c

    move-object/from16 v63, v64

    .line 321
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v7, 0x1

    move/from16 v0, v105

    if-ne v0, v7, :cond_2b

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v84

    .line 325
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 328
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 331
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5d

    .line 333
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 335
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v160, Lcom/android/server/VibratorService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5e

    .line 337
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .local v160, "vibrator":Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 339
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v83, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5f

    .line 341
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v83, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_10
    const-string v7, "consumer_ir"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 345
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 349
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_60

    .line 351
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_11
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 353
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 356
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 358
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_61

    .line 361
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v7, 0x1

    move/from16 v0, v105

    if-eq v0, v7, :cond_2c

    const/16 v22, 0x1

    :goto_9
    if-nez v107, :cond_2d

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v171

    .line 365
    const-string v7, "window"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 366
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 368
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v171

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 370
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 371
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 373
    move-object/from16 v0, v171

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 374
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 377
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x11100a1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v110

    .line 379
    .local v110, "initOMADM":Z
    if-eqz v110, :cond_4

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    invoke-direct {v0, v1, v5}, Lcom/android/server/ServerThread;->initializeOMADM(Landroid/content/pm/IPackageManager;Landroid/content/Context;)V

    .line 387
    :cond_4
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 388
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ServerThread;->createPixelPipeManagerService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v134

    .line 405
    .local v134, "ppManagerService":Landroid/os/IBinder;
    if-eqz v134, :cond_5

    .line 406
    const-string v7, "pixelpipe"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :cond_5
    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v159, v160

    .line 413
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v110    # "initOMADM":Z
    .end local v134    # "ppManagerService":Landroid/os/IBinder;
    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    :goto_c
    const/16 v88, 0x0

    .line 414
    .local v88, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v146, 0x0

    .line 415
    .local v146, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v108, 0x0

    .line 416
    .local v108, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v66, 0x0

    .line 417
    .local v66, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v130, 0x0

    .line 418
    .local v130, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v165, 0x0

    .line 419
    .local v165, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v115, 0x0

    .line 420
    .local v115, "location":Lcom/android/server/LocationManagerService;
    const/16 v85, 0x0

    .line 421
    .local v85, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v150, 0x0

    .line 422
    .local v150, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v117, 0x0

    .line 423
    .local v117, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v102, 0x0

    .line 424
    .local v102, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v68, 0x0

    .line 425
    .local v68, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v135, 0x0

    .line 426
    .local v135, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v119, 0x0

    .line 429
    .local v119, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v105

    if-eq v0, v7, :cond_6

    .line 433
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v109, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v109

    move-object/from16 v1, v171

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 435
    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v109, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_58

    move-object/from16 v108, v109

    .line 441
    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 451
    :cond_6
    :goto_e
    :try_start_16
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 457
    :goto_f
    :try_start_17
    invoke-interface/range {v132 .. v132}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 463
    :goto_10
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040417

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_57

    .line 470
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v105

    if-eq v0, v7, :cond_34

    .line 471
    if-nez v96, :cond_7

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 478
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v123, Lcom/android/server/MountService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .line 480
    .end local v122    # "mountService":Lcom/android/server/MountService;
    .local v123, "mountService":Lcom/android/server/MountService;
    :try_start_1a
    const-string v7, "mount"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_56

    move-object/from16 v122, v123

    .line 486
    .end local v123    # "mountService":Lcom/android/server/MountService;
    .restart local v122    # "mountService":Lcom/android/server/MountService;
    :cond_7
    :goto_12
    if-nez v95, :cond_8

    .line 488
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v118, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .line 490
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v118, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1c
    const-string v7, "lock_settings"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_55

    move-object/from16 v117, v118

    .line 496
    .end local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v89, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .line 498
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v89, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v7, "device_policy"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_54

    move-object/from16 v88, v89

    .line 504
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_8
    :goto_14
    if-nez v97, :cond_9

    .line 506
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v147, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v147

    move-object/from16 v1, v171

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 508
    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v147, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v7, "statusbar"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_53

    move-object/from16 v146, v147

    .line 514
    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_9
    :goto_15
    if-nez v95, :cond_a

    .line 516
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    .line 524
    :cond_a
    :goto_16
    if-nez v94, :cond_b

    .line 526
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 528
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .line 534
    :cond_b
    :goto_17
    if-nez v95, :cond_c

    .line 536
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v151, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 538
    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v151, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v7, "textservices"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_52

    move-object/from16 v150, v151

    .line 544
    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_c
    :goto_18
    if-nez v94, :cond_33

    .line 546
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v127, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v127

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 548
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v127, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v7, "netstats"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_51

    move-object/from16 v29, v127

    .line 554
    .end local v127    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_10

    .line 558
    .end local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_50

    .line 564
    :goto_1a
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v170, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v170

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    .line 566
    .end local v169    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v170, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v170

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4f

    move-object/from16 v169, v170

    .line 572
    .end local v170    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v169    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v168, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v168

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 574
    .end local v167    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v168, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v168

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4e

    move-object/from16 v167, v168

    .line 582
    .end local v168    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v167    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1c
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v81, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v81

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_13

    .line 585
    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v81, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_2e
    const-string v7, "connectivity"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 586
    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 587
    move-object/from16 v0, v25

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 589
    invoke-virtual/range {v169 .. v169}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 590
    invoke-virtual/range {v167 .. v167}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4d

    move-object/from16 v80, v81

    .line 598
    .end local v81    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_1d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111008f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v163

    .line 600
    .local v163, "vzwConnectivityServiceInit":Z
    if-eqz v163, :cond_d

    .line 603
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "VzwConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v162, Lcom/motorola/server/VzwConnectivityService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/motorola/server/VzwConnectivityService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_14

    .line 605
    .end local v161    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .local v162, "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    :try_start_30
    const-string v7, "vzwconnectivity"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 606
    move-object/from16 v0, v162

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_4c

    move-object/from16 v161, v162

    .line 615
    .end local v162    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v161    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    :cond_d
    :goto_1e
    const/16 v76, 0x0

    .line 617
    .local v76, "cneObj":Ljava/lang/Object;
    :try_start_31
    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_16

    move-result v158

    .line 618
    .local v158, "value":I
    if-lez v158, :cond_e

    .line 620
    :try_start_32
    new-instance v74, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/com.quicinc.cne.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v74

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 623
    .local v74, "cneClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.quicinc.cne.CNE"

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v73

    .line 624
    .local v73, "cneClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/Handler;

    aput-object v10, v7, v9

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v75

    .line 626
    .local v75, "cneConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v7, v9

    move-object/from16 v0, v75

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_16

    move-result-object v76

    .line 632
    .end local v73    # "cneClass":Ljava/lang/Class;
    .end local v74    # "cneClassLoader":Ldalvik/system/PathClassLoader;
    .end local v75    # "cneConstructor":Ljava/lang/reflect/Constructor;
    .end local v76    # "cneObj":Ljava/lang/Object;
    :goto_1f
    if-eqz v76, :cond_e

    :try_start_33
    move-object/from16 v0, v76

    instance-of v7, v0, Landroid/os/IBinder;

    if-eqz v7, :cond_e

    .line 633
    const-string v7, "cneservice"

    check-cast v76, Landroid/os/IBinder;

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 634
    const-string v7, "SystemServer"

    const-string v9, "starting cneservice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_16

    .line 644
    .end local v158    # "value":I
    :cond_e
    :goto_20
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v144

    .line 646
    const-string v7, "servicediscovery"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_17

    .line 653
    .end local v163    # "vzwConnectivityServiceInit":Z
    :goto_21
    if-nez v95, :cond_f

    .line 655
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_18

    .line 668
    :cond_f
    :goto_22
    if-eqz v122, :cond_10

    if-nez v24, :cond_10

    .line 669
    invoke-virtual/range {v122 .. v122}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 673
    :cond_10
    if-eqz v63, :cond_11

    .line 674
    :try_start_36
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_19

    .line 680
    :cond_11
    :goto_23
    if-eqz v84, :cond_12

    .line 681
    :try_start_37
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1a

    .line 687
    :cond_12
    :goto_24
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v131, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v131

    move-object/from16 v1, v146

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1b

    .line 689
    .end local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .local v131, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_39
    const-string v7, "notification"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 690
    move-object/from16 v0, v25

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_4b

    move-object/from16 v130, v131

    .line 696
    .end local v131    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v130    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1c

    .line 703
    :goto_26
    if-nez v92, :cond_13

    .line 705
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v116, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1d

    .line 707
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .local v116, "location":Lcom/android/server/LocationManagerService;
    :try_start_3c
    const-string v7, "location"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_4a

    move-object/from16 v115, v116

    .line 713
    .end local v116    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v86, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v86

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1e

    .line 715
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v86, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3e
    const-string v7, "country_detector"

    move-object/from16 v0, v86

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_49

    move-object/from16 v85, v86

    .line 722
    .end local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_13
    :goto_28
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ServerThread;->addConnectivityService(Landroid/content/Context;)V

    .line 727
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/ServerThread;->addCdmaConnectivityService(Landroid/content/Context;)V

    .line 730
    if-nez v95, :cond_14

    .line 733
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1f

    .line 742
    :cond_14
    :goto_29
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_20

    .line 753
    :goto_2a
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Starting Checkin Mot Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v7, "checkin_mot"

    new-instance v9, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v9, v5}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_21

    .line 761
    :goto_2b
    if-nez v95, :cond_15

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 764
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    if-nez v33, :cond_15

    .line 766
    new-instance v166, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_22

    .line 767
    .end local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v166, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_43
    const-string v7, "wallpaper"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_48

    move-object/from16 v165, v166

    .line 774
    .end local v166    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_15
    :goto_2c
    if-nez v93, :cond_16

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 776
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_23

    .line 783
    :cond_16
    :goto_2d
    if-nez v95, :cond_17

    .line 785
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    new-instance v101, Lcom/android/server/DockObserver;

    move-object/from16 v0, v101

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_24

    .end local v100    # "dock":Lcom/android/server/DockObserver;
    .local v101, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v100, v101

    .line 793
    .end local v101    # "dock":Lcom/android/server/DockObserver;
    .restart local v100    # "dock":Lcom/android/server/DockObserver;
    :cond_17
    :goto_2e
    if-nez v93, :cond_18

    .line 795
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_25

    .line 804
    :cond_18
    :goto_2f
    if-nez v95, :cond_19

    .line 806
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v157, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_26

    .line 809
    .end local v156    # "usb":Lcom/android/server/usb/UsbService;
    .local v157, "usb":Lcom/android/server/usb/UsbService;
    :try_start_48
    const-string v7, "usb"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_47

    move-object/from16 v156, v157

    .line 815
    .end local v157    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v156    # "usb":Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v143, Lcom/android/server/SerialService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_27

    .line 818
    .end local v142    # "serial":Lcom/android/server/SerialService;
    .local v143, "serial":Lcom/android/server/SerialService;
    :try_start_4a
    const-string v7, "serial"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_46

    move-object/from16 v142, v143

    .line 825
    .end local v143    # "serial":Lcom/android/server/SerialService;
    .restart local v142    # "serial":Lcom/android/server/SerialService;
    :cond_19
    :goto_31
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v153, Lcom/android/server/TwilightService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_28

    .end local v152    # "twilight":Lcom/android/server/TwilightService;
    .local v153, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v152, v153

    .line 832
    .end local v153    # "twilight":Lcom/android/server/TwilightService;
    .restart local v152    # "twilight":Lcom/android/server/TwilightService;
    :goto_32
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v155, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v155

    move-object/from16 v1, v152

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_29

    .end local v154    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v155, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v154, v155

    .line 839
    .end local v155    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v154    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_33
    if-nez v95, :cond_1a

    .line 841
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2a

    .line 849
    :goto_34
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v67, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2b

    .line 851
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v67, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_4f
    const-string v7, "appwidget"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_45

    move-object/from16 v66, v67

    .line 857
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v141, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2c

    .end local v140    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v141, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v140, v141

    .line 865
    .end local v141    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v140    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_1a
    :goto_36
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2d

    .line 876
    :goto_37
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2e

    .line 883
    :goto_38
    if-nez v94, :cond_1b

    .line 885
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v129, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2f

    .end local v128    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v129, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v128, v129

    .line 892
    .end local v129    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v128    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_39
    if-nez v93, :cond_1c

    .line 894
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v78, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_30

    .line 896
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v78, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_55
    const-string v7, "commontime_management"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_44

    move-object/from16 v77, v78

    .line 902
    .end local v78    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_3a
    if-nez v94, :cond_1d

    .line 904
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_31

    .line 911
    :cond_1d
    :goto_3b
    if-nez v95, :cond_1e

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110048

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 914
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v103, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v103

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_32

    .line 917
    .end local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v103, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_58
    const-string v7, "dreams"

    move-object/from16 v0, v103

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_43

    move-object/from16 v102, v103

    .line 923
    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1e
    :goto_3c
    if-nez v95, :cond_1f

    if-nez v90, :cond_1f

    .line 925
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    new-instance v69, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_33

    .line 927
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v69, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_5a
    const-string v7, "assetatlas"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_42

    move-object/from16 v68, v69

    .line 934
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_3d
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_34

    .line 941
    :goto_3e
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v136, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_35

    .line 943
    .end local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v136, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_5d
    const-string v7, "print"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_41

    move-object/from16 v135, v136

    .line 948
    .end local v136    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_3f
    if-nez v95, :cond_20

    .line 950
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v120, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_36

    .line 952
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v120, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_5f
    const-string v7, "media_router"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_40

    move-object/from16 v119, v120

    .line 961
    .end local v120    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_20
    :goto_40
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 962
    .local v47, "safeMode":Z
    if-eqz v47, :cond_32

    .line 963
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 965
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 967
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 976
    :goto_41
    :try_start_60
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_37

    .line 981
    :goto_42
    if-eqz v117, :cond_21

    .line 983
    :try_start_61
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_38

    .line 989
    :cond_21
    :goto_43
    if-eqz v88, :cond_22

    .line 991
    :try_start_62
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_39

    .line 997
    :cond_22
    :goto_44
    if-eqz v130, :cond_23

    .line 999
    :try_start_63
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3a

    .line 1006
    :cond_23
    :goto_45
    :try_start_64
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3b

    .line 1011
    :goto_46
    if-eqz v47, :cond_24

    .line 1012
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1018
    :cond_24
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v79

    .line 1019
    .local v79, "config":Landroid/content/res/Configuration;
    new-instance v121, Landroid/util/DisplayMetrics;

    invoke-direct/range {v121 .. v121}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1020
    .local v121, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v164

    check-cast v164, Landroid/view/WindowManager;

    .line 1021
    .local v164, "w":Landroid/view/WindowManager;
    invoke-interface/range {v164 .. v164}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v121

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1022
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v79

    move-object/from16 v1, v121

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1025
    :try_start_65
    move-object/from16 v0, v152

    move-object/from16 v1, v102

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3c

    .line 1031
    :goto_47
    :try_start_66
    invoke-interface/range {v132 .. v132}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3d

    .line 1037
    :goto_48
    :try_start_67
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3e

    .line 1043
    :goto_49
    move-object/from16 v34, v5

    .line 1044
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v122

    .line 1045
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1046
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1047
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1048
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1049
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v80

    .line 1050
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v100

    .line 1051
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v156

    .line 1052
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v152

    .line 1053
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v154

    .line 1054
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v66

    .line 1055
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v165

    .line 1056
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v108

    .line 1057
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v140

    .line 1058
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v115

    .line 1059
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v85

    .line 1060
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v128

    .line 1061
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v77

    .line 1062
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v150

    .line 1063
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v146

    .line 1064
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v102

    .line 1065
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v68

    .line 1066
    .local v57, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v58, v20

    .line 1067
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v148

    .line 1068
    .local v59, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v135

    .line 1069
    .local v62, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v61, v119

    .line 1070
    .local v61, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v60, v124

    .line 1077
    .local v60, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/print/PrintManagerService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1255
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1256
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_25
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1260
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void

    .line 148
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v61    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v62    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v79    # "config":Landroid/content/res/Configuration;
    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v84    # "contentService":Lcom/android/server/content/ContentService;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v90    # "disableAtlas":Z
    .end local v91    # "disableBluetooth":Z
    .end local v92    # "disableLocation":Z
    .end local v93    # "disableMedia":Z
    .end local v94    # "disableNetwork":Z
    .end local v95    # "disableNonCoreServices":Z
    .end local v96    # "disableStorage":Z
    .end local v97    # "disableSystemUI":Z
    .end local v98    # "disableTelephony":Z
    .end local v100    # "dock":Lcom/android/server/DockObserver;
    .end local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v105    # "factoryTest":I
    .end local v106    # "factoryTestStr":Ljava/lang/String;
    .end local v107    # "firstBoot":Z
    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v121    # "metrics":Landroid/util/DisplayMetrics;
    .end local v122    # "mountService":Lcom/android/server/MountService;
    .end local v124    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v128    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v132    # "pm":Landroid/content/pm/IPackageManager;
    .end local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v137    # "qcCon":Ljava/lang/Object;
    .end local v140    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v142    # "serial":Lcom/android/server/SerialService;
    .end local v144    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v152    # "twilight":Lcom/android/server/TwilightService;
    .end local v154    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v156    # "usb":Lcom/android/server/usb/UsbService;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .end local v161    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .end local v164    # "w":Landroid/view/WindowManager;
    .end local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v167    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v169    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v171    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v172    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_26
    const/16 v139, 0x0

    goto/16 :goto_0

    .line 154
    .restart local v139    # "reboot":Z
    :cond_27
    const/16 v138, 0x0

    .restart local v138    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 162
    .end local v138    # "reason":Ljava/lang/String;
    .end local v139    # "reboot":Z
    .restart local v106    # "factoryTestStr":Ljava/lang/String;
    :cond_28
    invoke-static/range {v106 .. v106}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v105

    goto/16 :goto_2

    .line 241
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v100    # "dock":Lcom/android/server/DockObserver;
    .restart local v105    # "factoryTest":I
    .restart local v107    # "firstBoot":Z
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v122    # "mountService":Lcom/android/server/MountService;
    .restart local v124    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v128    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v132    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v137    # "qcCon":Ljava/lang/Object;
    .restart local v140    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v142    # "serial":Lcom/android/server/SerialService;
    .restart local v144    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v152    # "twilight":Lcom/android/server/TwilightService;
    .restart local v154    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v156    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v161    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v167    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v169    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v171    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v172    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v104

    .line 242
    .local v104, "e":Ljava/lang/RuntimeException;
    :goto_4a
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 287
    .end local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v104    # "e":Ljava/lang/RuntimeException;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v90    # "disableAtlas":Z
    .restart local v91    # "disableBluetooth":Z
    .restart local v92    # "disableLocation":Z
    .restart local v93    # "disableMedia":Z
    .restart local v94    # "disableNetwork":Z
    .restart local v95    # "disableNonCoreServices":Z
    .restart local v96    # "disableStorage":Z
    .restart local v97    # "disableSystemUI":Z
    .restart local v98    # "disableTelephony":Z
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_29
    :try_start_68
    const-string v7, "1"

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 288
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 292
    :cond_2a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 317
    :catch_1
    move-exception v104

    .line 318
    .local v104, "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_2

    goto/16 :goto_7

    .line 408
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v104

    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .line 409
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v104, "e":Ljava/lang/RuntimeException;
    :goto_4c
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 322
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "e":Ljava/lang/RuntimeException;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2b
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 362
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_2d
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 389
    .restart local v110    # "initOMADM":Z
    :cond_2e
    const/4 v7, 0x1

    move/from16 v0, v105

    if-ne v0, v7, :cond_2f

    .line 390
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 408
    .end local v110    # "initOMADM":Z
    :catch_3
    move-exception v104

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_4c

    .line 391
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "initOMADM":Z
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2f
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 393
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 394
    :cond_30
    if-eqz v91, :cond_31

    .line 395
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 397
    :cond_31
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v72, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_3

    .line 399
    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v72, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_6a
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_62

    move-object/from16 v71, v72

    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 436
    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v110    # "initOMADM":Z
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v104

    .line 437
    .local v104, "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 444
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v104

    .line 445
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 452
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v104

    .line 453
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 458
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v104

    .line 459
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 481
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v104

    .line 482
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 491
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v104

    .line 492
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 499
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v104

    .line 500
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 509
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v104

    .line 510
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 519
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v104

    .line 520
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 529
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v104

    .line 530
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 539
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v104

    .line 540
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 549
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v104

    .line 550
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 559
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v104

    move-object/from16 v25, v126

    .line 560
    .end local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 567
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v104

    .line 568
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 575
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v104

    .line 576
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 592
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v104

    .line 593
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 607
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v163    # "vzwConnectivityServiceInit":Z
    :catch_14
    move-exception v104

    .line 608
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting VzwConnectivityService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 627
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v76    # "cneObj":Ljava/lang/Object;
    .restart local v158    # "value":I
    :catch_15
    move-exception v104

    .line 628
    .local v104, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "Failed to load CNE class"

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    const/16 v76, 0x0

    .line 630
    const-string v7, "Creating Connectivity Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_16

    goto/16 :goto_1f

    .line 637
    .end local v76    # "cneObj":Ljava/lang/Object;
    .end local v104    # "e":Ljava/lang/Exception;
    .end local v158    # "value":I
    :catch_16
    move-exception v104

    .line 638
    .local v104, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Loading CNEService failed: "

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    const-string v7, "starting Connectivity Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 648
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v104

    .line 649
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 658
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v163    # "vzwConnectivityServiceInit":Z
    :catch_18
    move-exception v104

    .line 659
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 675
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v104

    .line 676
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 682
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v104

    .line 683
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 691
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v104

    .line 692
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 699
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v104

    .line 700
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 708
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v104

    .line 709
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 716
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v104

    .line 717
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 736
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v104

    .line 737
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 745
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v104

    .line 746
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 756
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v104

    .line 757
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 769
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v104

    .line 770
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 778
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v104

    .line 779
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 788
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v104

    .line 789
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 799
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v104

    .line 800
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 810
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v104

    .line 811
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 819
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v104

    .line 820
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 827
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v104

    .line 828
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 835
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v104

    .line 836
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 844
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v104

    .line 845
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v104

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 852
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v104

    .line 853
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 859
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v104

    .line 860
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 867
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v104

    .line 868
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 879
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v104

    .line 880
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 887
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v104

    .line 888
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 897
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v104

    .line 898
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 906
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v104

    .line 907
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 918
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v104

    .line 919
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 928
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v104

    .line 929
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 936
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v104

    .line 937
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 944
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v104

    .line 945
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 953
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v104

    .line 954
    .restart local v104    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 970
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_32
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_41

    .line 977
    :catch_37
    move-exception v104

    .line 978
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 984
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v104

    .line 985
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 992
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v104

    .line 993
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1000
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v104

    .line 1001
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1007
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v104

    .line 1008
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1026
    .end local v104    # "e":Ljava/lang/Throwable;
    .restart local v79    # "config":Landroid/content/res/Configuration;
    .restart local v121    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v164    # "w":Landroid/view/WindowManager;
    :catch_3c
    move-exception v104

    .line 1027
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1032
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v104

    .line 1033
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1038
    .end local v104    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v104

    .line 1039
    .restart local v104    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 297
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v79    # "config":Landroid/content/res/Configuration;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v104    # "e":Ljava/lang/Throwable;
    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v121    # "metrics":Landroid/util/DisplayMetrics;
    .end local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v164    # "w":Landroid/view/WindowManager;
    .end local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3f
    move-exception v7

    goto/16 :goto_6

    .line 953
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .end local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v120    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_40
    move-exception v104

    move-object/from16 v119, v120

    .end local v120    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_64

    .line 944
    .end local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v136    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_41
    move-exception v104

    move-object/from16 v135, v136

    .end local v136    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_63

    .line 928
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_42
    move-exception v104

    move-object/from16 v68, v69

    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_62

    .line 918
    .end local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_43
    move-exception v104

    move-object/from16 v102, v103

    .end local v103    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_61

    .line 897
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v78    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_44
    move-exception v104

    move-object/from16 v77, v78

    .end local v78    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_60

    .line 852
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_45
    move-exception v104

    move-object/from16 v66, v67

    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_5f

    .line 819
    .end local v142    # "serial":Lcom/android/server/SerialService;
    .restart local v143    # "serial":Lcom/android/server/SerialService;
    :catch_46
    move-exception v104

    move-object/from16 v142, v143

    .end local v143    # "serial":Lcom/android/server/SerialService;
    .restart local v142    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_5e

    .line 810
    .end local v156    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v157    # "usb":Lcom/android/server/usb/UsbService;
    :catch_47
    move-exception v104

    move-object/from16 v156, v157

    .end local v157    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v156    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_5d

    .line 769
    .end local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v166    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_48
    move-exception v104

    move-object/from16 v165, v166

    .end local v166    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5c

    .line 716
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_49
    move-exception v104

    move-object/from16 v85, v86

    .end local v86    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5b

    .line 708
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "location":Lcom/android/server/LocationManagerService;
    :catch_4a
    move-exception v104

    move-object/from16 v115, v116

    .end local v116    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_5a

    .line 691
    .end local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v131    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_4b
    move-exception v104

    move-object/from16 v130, v131

    .end local v131    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v130    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_59

    .line 607
    .end local v161    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v162    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v163    # "vzwConnectivityServiceInit":Z
    :catch_4c
    move-exception v104

    move-object/from16 v161, v162

    .end local v162    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v161    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    goto/16 :goto_58

    .line 592
    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v163    # "vzwConnectivityServiceInit":Z
    .restart local v81    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_4d
    move-exception v104

    move-object/from16 v80, v81

    .end local v81    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_57

    .line 575
    .end local v167    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v168    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_4e
    move-exception v104

    move-object/from16 v167, v168

    .end local v168    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v167    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_56

    .line 567
    .end local v169    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v170    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4f
    move-exception v104

    move-object/from16 v169, v170

    .end local v170    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v169    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_55

    .line 559
    :catch_50
    move-exception v104

    goto/16 :goto_54

    .line 549
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v127    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_51
    move-exception v104

    move-object/from16 v29, v127

    .end local v127    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_53

    .line 539
    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_52
    move-exception v104

    move-object/from16 v150, v151

    .end local v151    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_52

    .line 509
    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_53
    move-exception v104

    move-object/from16 v146, v147

    .end local v147    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_51

    .line 499
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_54
    move-exception v104

    move-object/from16 v88, v89

    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_50

    .line 491
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_55
    move-exception v104

    move-object/from16 v117, v118

    .end local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_4f

    .line 481
    .end local v122    # "mountService":Lcom/android/server/MountService;
    .restart local v123    # "mountService":Lcom/android/server/MountService;
    :catch_56
    move-exception v104

    move-object/from16 v122, v123

    .end local v123    # "mountService":Lcom/android/server/MountService;
    .restart local v122    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_4e

    .line 467
    :catch_57
    move-exception v7

    goto/16 :goto_11

    .line 436
    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_58
    move-exception v104

    move-object/from16 v108, v109

    .end local v109    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4d

    .line 408
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    :catch_59
    move-exception v104

    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v99

    .end local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    :catch_5a
    move-exception v104

    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v124    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v125    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5b
    move-exception v104

    move-object/from16 v124, v125

    .end local v125    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v124    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4c

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v87    # "cryptState":Ljava/lang/String;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5c
    move-exception v104

    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v114

    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4c

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v104

    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v70

    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_4c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v104

    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_4c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5f
    move-exception v104

    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_60
    move-exception v104

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_61
    move-exception v104

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v111

    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .end local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v110    # "initOMADM":Z
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v160    # "vibrator":Lcom/android/server/VibratorService;
    :catch_62
    move-exception v104

    move-object/from16 v82, v83

    .end local v83    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v148, v149

    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v159, v160

    .end local v160    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4c

    .line 317
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v110    # "initOMADM":Z
    .end local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v70    # "battery":Lcom/android/server/BatteryService;
    .restart local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v104

    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4b

    .line 241
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v87    # "cryptState":Ljava/lang/String;
    .end local v90    # "disableAtlas":Z
    .end local v91    # "disableBluetooth":Z
    .end local v92    # "disableLocation":Z
    .end local v93    # "disableMedia":Z
    .end local v94    # "disableNetwork":Z
    .end local v95    # "disableNonCoreServices":Z
    .end local v96    # "disableStorage":Z
    .end local v97    # "disableSystemUI":Z
    .end local v98    # "disableTelephony":Z
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .end local v149    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v148    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v104

    move-object/from16 v112, v113

    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_4a

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v112    # "installer":Lcom/android/server/pm/Installer;
    .restart local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v133    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_65
    move-exception v104

    move-object/from16 v4, v133

    .end local v133    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v112, v113

    .end local v113    # "installer":Lcom/android/server/pm/Installer;
    .restart local v112    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_4a

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v70    # "battery":Lcom/android/server/BatteryService;
    .end local v99    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v111    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v90    # "disableAtlas":Z
    .restart local v91    # "disableBluetooth":Z
    .restart local v92    # "disableLocation":Z
    .restart local v93    # "disableMedia":Z
    .restart local v94    # "disableNetwork":Z
    .restart local v95    # "disableNonCoreServices":Z
    .restart local v96    # "disableStorage":Z
    .restart local v97    # "disableSystemUI":Z
    .restart local v98    # "disableTelephony":Z
    .restart local v102    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v108    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v119    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v130    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v135    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v146    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v150    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_33
    move-object/from16 v25, v126

    .end local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_21

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_34
    move-object/from16 v25, v126

    .end local v126    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_40
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    return-void
.end method
