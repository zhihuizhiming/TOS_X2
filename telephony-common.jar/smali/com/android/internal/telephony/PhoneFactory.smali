.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field protected static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field protected static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field protected static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field protected static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field protected static sContext:Landroid/content/Context;

.field protected static sLooper:Landroid/os/Looper;

.field protected static sMadeDefaults:Z

.field private static sPhoneNVProxy:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

.field protected static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected static sProxyPhone:Lcom/android/internal/telephony/Phone;

.field protected static sSignalLevelManager:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 60
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 206
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 219
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 220
    return-object v0

    .line 209
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 210
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 219
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 224
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 226
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    .line 88
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/SignalLevelManager;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sSignalLevelManager:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    .line 89
    const-class v11, Lcom/android/internal/telephony/Phone;

    monitor-enter v11

    .line 90
    :try_start_0
    sget-boolean v10, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v10, :cond_5

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 92
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 94
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v10, :cond_0

    .line 95
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v12, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 189
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 99
    :cond_0
    const/4 v9, 0x0

    .line 101
    .local v9, "retryCount":I
    :goto_0
    const/4 v3, 0x0

    .line 102
    .local v3, "hasException":Z
    add-int/lit8 v9, v9, 0x1

    .line 107
    :try_start_1
    new-instance v10, Landroid/net/LocalServerSocket;

    const-string v12, "com.android.internal.telephony"

    invoke-direct {v10, v12}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    if-nez v3, :cond_6

    .line 124
    :try_start_2
    new-instance v10, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v10}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 127
    const/4 v8, 0x0

    .line 128
    .local v8, "preferredNetworkMode":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v10

    if-ne v10, v14, :cond_1

    .line 129
    const/4 v8, 0x7

    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "preferred_network_mode"

    invoke-static {v10, v12, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 133
    .local v4, "networkMode":I
    const-string v10, "PhoneFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Network Mode set to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v0

    .line 136
    .local v0, "cdmaSubscription":I
    const-string v10, "PhoneFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cdma Subscription set to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v10, Lcom/android/internal/telephony/RIL;

    invoke-direct {v10, p0, v4, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 142
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 144
    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v7

    .line 145
    .local v7, "phoneType":I
    if-ne v7, v14, :cond_8

    .line 146
    const-string v10, "PhoneFactory"

    const-string v12, "Creating GSMPhone"

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v10, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v12, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 167
    :cond_2
    :goto_2
    const/4 v10, 0x1

    invoke-static {p0, v10}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 169
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v5, "NONE"

    .line 170
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 171
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 173
    :cond_3
    const-string v10, "PhoneFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "defaultSmsApplication: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x1110077

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 182
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v10}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getInstance(Lcom/android/internal/telephony/Phone;)Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    move-result-object v6

    .line 183
    .local v6, "phoneNVInfo":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    invoke-static {v6}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->init(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNVProxy:Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    .line 187
    .end local v6    # "phoneNVInfo":Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    :cond_4
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 189
    .end local v0    # "cdmaSubscription":I
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "hasException":Z
    .end local v4    # "networkMode":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "phoneType":I
    .end local v8    # "preferredNetworkMode":I
    .end local v9    # "retryCount":I
    :cond_5
    monitor-exit v11

    .line 190
    return-void

    .line 108
    .restart local v3    # "hasException":Z
    .restart local v9    # "retryCount":I
    :catch_0
    move-exception v2

    .line 109
    .local v2, "ex":Ljava/io/IOException;
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 114
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_6
    const/4 v10, 0x3

    if-le v9, v10, :cond_7

    .line 115
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v12, "PhoneFactory probably already running"

    invoke-direct {v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_7
    const-wide/16 v12, 0x7d0

    :try_start_3
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 119
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 149
    .restart local v0    # "cdmaSubscription":I
    .restart local v4    # "networkMode":I
    .restart local v7    # "phoneType":I
    .restart local v8    # "preferredNetworkMode":I
    :cond_8
    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    .line 150
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 158
    const-string v10, "PhoneFactory"

    const-string v12, "Creating CDMAPhone"

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v10, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v12, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 152
    :pswitch_0
    const-string v10, "PhoneFactory"

    const-string v12, "Creating CDMALTEPhone"

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v10, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v12, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 240
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
