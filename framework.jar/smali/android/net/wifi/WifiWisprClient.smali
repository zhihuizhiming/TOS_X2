.class public Landroid/net/wifi/WifiWisprClient;
.super Landroid/os/Handler;
.source "WifiWisprClient.java"


# static fields
.field private static final ABORT_RESPONSE_MESSAGE_TYPE:I = 0x96

.field private static final AUTHENTICATION_NOTIFICATION_MESSAGE_TYPE:I = 0x78

.field private static final AUTHENTICATION_PENDING_CODE:I = 0xc9

.field private static final AUTHENTICATION_RESPONSE_MESSAGE_TYPE:I = 0x8c

.field private static final EVENT_ABORT_LOGIN:I = 0x4

.field private static final EVENT_AUTH_POLL:I = 0x3

.field private static final EVENT_LOGIN_START:I = 0x1

.field private static final EVENT_LOGOFF:I = 0x5

.field private static final EVENT_PROXY_START:I = 0x2

.field private static final GATEWAY_INTERNAL_ERROR_CODE:I = 0xff

.field private static final HOTSPOT_ENABLED:Z

.field public static final ICON_HOTSPOT_LOGIN_FAIL:I = 0x1080682

.field public static final ICON_HOTSPOT_LOGIN_SUCCESS:I = 0x1080683

.field private static final INITIAL_GET_URL:Ljava/lang/String; = "http://rsc.att.com/library/test/success.html"

.field private static final INITIAL_PROBE_RETRY_LIMIT:I = 0x5

.field private static final INITIAL_REDIRECT_MESSAGE_TYPE:I = 0x64

.field private static final IP_ADDR_TAG:Ljava/lang/String; = "IpAddr="

.field private static final LOGIN_ABORTED_CODE:I = 0x97

.field private static final LOGIN_FAILED_CODE:I = 0x64

.field private static final LOGIN_SUCCEEDED_CODE:I = 0x32

.field private static final LOGOFF_NOTIFICATION_MESSAGE_TYPE:I = 0x82

.field private static final LOGOFF_SUCCEEDED_CODE:I = 0x96

.field private static final MAC_ADDR_TAG:Ljava/lang/String; = "MacAddr="

.field private static final NETWORK_ADMIN_ERROR_CODE:I = 0x69

.field public static final NOTIFY_HOTSPOT_AUTHENTICATION_FAILED:I = 0x3

.field public static final NOTIFY_HOTSPOT_NETWORK_FAILED:I = 0x2

.field public static final NOTIFY_HOTSPOT_NONE:I = -0x1

.field public static final NOTIFY_HOTSPOT_NOSIM_FAILED:I = 0x4

.field public static final NOTIFY_HOTSPOT_SUCCESS:I = 0x1

.field private static final NO_ERROR_CODE:I = 0x0

.field private static final NO_SIM_RETRY_LIMIT:I = 0xf

.field private static final NO_WISPR_MESSAGE_FOUND:I = -0x1

.field private static final PARAM_NOT_DEFINED:I = -0x1

.field private static final PARAM_SEPERATOR_TAG:Ljava/lang/String; = "&amp;"

.field private static final PROXY_DETECTION_CODE:I = 0xc8

.field private static final PROXY_NOTIFICATION_MESSAGE_TYPE:I = 0x6e

.field private static final RADIUS_SERVER_CODE:I = 0x66

.field private static final SESSION_ERROR_TIMEOUT:I = -0x2

.field private static final SESSION_RETRY_INTERVAL:I = 0x7d0

.field private static final SESSION_RETRY_LIMIT:I = 0x3

.field private static final SESSION_TIMEOUT_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "WifiWisprClient"

.field private static final VALUE_SEPERATOR_TAG:Ljava/lang/String; = "="

.field public static final WISPR_ABORT_FAILED:I = 0x1fb

.field public static final WISPR_ABORT_SUCCESSFUL:I = 0x1fa

.field public static final WISPR_LOGIN_FAILED_AUTHENTICATION:I = 0x1f6

.field public static final WISPR_LOGIN_FAILED_NETWORK:I = 0x1f5

.field public static final WISPR_LOGIN_FAILED_NOSIM:I = 0x1f7

.field public static final WISPR_LOGIN_SUCCESSFUL:I = 0x1f4

.field public static final WISPR_LOGOFF_FAILED:I = 0x1f9

.field public static final WISPR_LOGOFF_SUCCESSFUL:I = 0x1f8

.field public static mHotSpotNotifType:I


# instance fields
.field private ABORT_URL_PARAM:Ljava/lang/String;

.field private ACCESS_LOCATION_PARAM:Ljava/lang/String;

.field private ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

.field private AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

.field private DELAY_PARAM:Ljava/lang/String;

.field private LOCATION_NAME_PARAM:Ljava/lang/String;

.field private LOGINRESULTS_URL_PARAM:Ljava/lang/String;

.field private LOGIN_URL_PARAM:Ljava/lang/String;

.field private LOGOFF_URL_PARAM:Ljava/lang/String;

.field private MESSAGE_TYPE_PARAM:Ljava/lang/String;

.field private NEXT_URL_PARAM:Ljava/lang/String;

.field private REPLY_MESSAGE_PARAM:Ljava/lang/String;

.field private RESPONSE_CODE_PARAM:Ljava/lang/String;

.field private WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

.field private mAbortLogin:Z

.field private mAbortLoginUrl:Ljava/lang/String;

.field private mAccessLocation:Ljava/lang/String;

.field private mAccessProcedure:Ljava/lang/String;

.field private mAuthSeed:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDelay:I

.field private mInitialGetURL:Ljava/lang/String;

.field private mInitialRetryCounter:I

.field private mIpAddr:Ljava/lang/String;

.field private mLocationName:Ljava/lang/String;

.field private mLogOffUrl:Ljava/lang/String;

.field private mLoginResultsUrl:Ljava/lang/String;

.field private mLoginUrl:Ljava/lang/String;

.field private mMacAddr:Ljava/lang/String;

.field private mMessageType:I

.field private mMsgType:Ljava/lang/String;

.field private mPassWord:Ljava/lang/String;

.field private mResponseCode:I

.field private mRetryCounter:I

.field private mRspCode:Ljava/lang/String;

.field private mSIMmsisdn:Ljava/lang/String;

.field private mServerResponse:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    const/4 v2, -0x1

    sput v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    .line 134
    const-string/jumbo v2, "ro.mot.wifi.hotspot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiWisprClient;->HOTSPOT_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msm"    # Lcom/android/internal/util/StateMachine;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 216
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    .line 172
    const-string v0, "http://rsc.att.com/library/test/success.html"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    .line 173
    const-string v0, "5551234567"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    .line 174
    const-string v0, "2b00042f7481c7b056c4b410d28f33cf"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    .line 176
    const-string v0, "WISPAccessGatewayParam>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

    .line 177
    const-string v0, "AccessProcedure>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

    .line 178
    const-string v0, "AccessLocation>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_LOCATION_PARAM:Ljava/lang/String;

    .line 179
    const-string v0, "LocationName>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOCATION_NAME_PARAM:Ljava/lang/String;

    .line 180
    const-string v0, "LoginURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGIN_URL_PARAM:Ljava/lang/String;

    .line 181
    const-string v0, "AbortLoginURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ABORT_URL_PARAM:Ljava/lang/String;

    .line 182
    const-string v0, "MessageType>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    .line 183
    const-string v0, "AuthenticationSeed>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

    .line 184
    const-string v0, "ResponseCode>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    .line 185
    const-string v0, "NextURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    .line 186
    const-string v0, "Delay>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    .line 187
    const-string v0, "ReplyMessage>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->REPLY_MESSAGE_PARAM:Ljava/lang/String;

    .line 188
    const-string v0, "LoginResultsURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGINRESULTS_URL_PARAM:Ljava/lang/String;

    .line 189
    const-string v0, "LogoffURL>"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "s9o3j9324oi234uo"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mSignature:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 220
    iput-object p1, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    .line 221
    return-void
.end method

.method public static checkIfHotSpot(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 13
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x22

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 755
    sget-boolean v10, Landroid/net/wifi/WifiWisprClient;->HOTSPOT_ENABLED:Z

    if-eqz v10, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x7

    if-ge v10, v11, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v8

    .line 759
    :cond_1
    const/4 v6, 0x0

    .line 760
    .local v6, "mHotSpotMask":Ljava/lang/String;
    const/4 v3, 0x0

    .line 761
    .local v3, "mHotSpot1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 762
    .local v4, "mHotSpot2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 763
    .local v5, "mHotSpot3":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .line 764
    .local v2, "lastPos":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 765
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 766
    .local v7, "r":Landroid/content/res/Resources;
    const v10, 0x1040668

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 767
    const v10, 0x1040669

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 768
    const v10, 0x104066a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 769
    const v10, 0x104066b

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 770
    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 773
    const/4 v10, 0x2

    if-lt v2, v10, :cond_2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_4

    .line 774
    :cond_2
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "checkString":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_3
    move v8, v9

    .line 782
    goto :goto_0

    .line 776
    .end local v0    # "checkString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "checkString":Ljava/lang/String;
    goto :goto_1
.end method

.method private cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "taggedString"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v1, "%3A"

    const-string v2, ":"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2F"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3F"

    const-string v3, "?"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2E"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2D"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "cleanedString":Ljava/lang/String;
    const-string v1, "%3a"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2f"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3f"

    const-string v3, "?"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2e"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2d"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    return-object v0
.end method

.method public static clearHotSpotNotification(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mNotificationShown"    # Z

    .prologue
    const/4 v2, 0x1

    .line 792
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 794
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 809
    :goto_0
    return-void

    .line 798
    :cond_0
    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    if-ne v1, v2, :cond_2

    .line 799
    const-string v1, "WifiWisprClient"

    const-string v2, "cancel(ICON_HOTSPOT_LOGIN_SUCCESS)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const v1, 0x1080683

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 808
    :cond_1
    :goto_1
    const/4 v1, -0x1

    sput v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    goto :goto_0

    .line 801
    :cond_2
    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    if-le v1, v2, :cond_3

    .line 802
    const-string v1, "WifiWisprClient"

    const-string v2, "cancel(ICON_HOTSPOT_LOGIN_FAIL)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const v1, 0x1080682

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 804
    :cond_3
    if-eqz p1, :cond_1

    .line 805
    const-string v1, "WifiWisprClient"

    const-string v2, "cancel(ICON_NETWORKS_AVAILABLE)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const v1, 0x108058d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private executeAuthRequestPost()I
    .locals 20

    .prologue
    .line 513
    const-string v17, "WISPR LOGIN request started"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 514
    const/4 v9, 0x0

    .line 517
    .local v9, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 518
    .local v11, "loginEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 519
    .local v16, "postUrl":Ljava/lang/String;
    const-string v3, ""

    .line 520
    .local v3, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "="

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 521
    .local v4, "contentPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mAuthSeed:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mSignature:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/net/wifi/WifiWisprClient;->getWisprHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    .line 523
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .local v15, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-lez v11, :cond_0

    .line 526
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "LoginUrl Content = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 530
    :cond_0
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_2

    .line 531
    const-string v17, "&amp;"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 532
    .local v14, "nextContentPosition":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    .line 533
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v18, 0x0

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    const-string v17, "&amp;"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v14

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 536
    const-string v17, "="

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 538
    :cond_1
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const/16 v18, 0x0

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    .end local v14    # "nextContentPosition":I
    :cond_2
    :goto_1
    :try_start_2
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v18, "username"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v18, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mPassWord:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Android."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "ro.build.version.release"

    const-string/jumbo v19, "unknown"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 552
    .local v12, "mobileVersion":Ljava/lang/String;
    const-string/jumbo v17, "ro.product.model"

    const-string/jumbo v18, "unknown"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 553
    .local v13, "modelId":Ljava/lang/String;
    const-string v2, "Motorola-WISPr1.0"

    .line 554
    .local v2, "appVersion":Ljava/lang/String;
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "attdevicetype"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "attdeviceOS"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "attwifiversion"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 560
    .local v6, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 561
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 562
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 564
    .end local v9    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_3
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 565
    .local v7, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v17, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 566
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 568
    invoke-interface {v10, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 569
    .local v8, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    .line 570
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 571
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AuthResponse= \n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " <Response> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v9, v10

    .line 576
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "contentPosition":I
    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v7    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "loginEnd":I
    .end local v12    # "mobileVersion":Ljava/lang/String;
    .end local v13    # "modelId":Ljava/lang/String;
    .end local v15    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v16    # "postUrl":Ljava/lang/String;
    .restart local v9    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_2
    if-eqz v9, :cond_3

    .line 577
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 579
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    move/from16 v17, v0

    return v17

    .line 572
    :catch_0
    move-exception v5

    .line 573
    .local v5, "e1":Ljava/lang/Exception;
    :goto_3
    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 574
    const-string v17, "ProbeResponse== SESSION_ERROR_TIMEOUT\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 572
    .end local v5    # "e1":Ljava/lang/Exception;
    .end local v9    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "appVersion":Ljava/lang/String;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "contentPosition":I
    .restart local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "loginEnd":I
    .restart local v12    # "mobileVersion":Ljava/lang/String;
    .restart local v13    # "modelId":Ljava/lang/String;
    .restart local v15    # "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v16    # "postUrl":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v9, v10

    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_3

    .line 544
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v6    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v12    # "mobileVersion":Ljava/lang/String;
    .end local v13    # "modelId":Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_1
.end method

.method private executePostUrl(Ljava/lang/String;)I
    .locals 8
    .param p1, "postUrl"    # Ljava/lang/String;

    .prologue
    .line 584
    const-string v6, "WISPR POST request started"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 585
    const/4 v4, 0x0

    .line 587
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 588
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 589
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 590
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v5, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 593
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 595
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WISPR Posting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 596
    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 597
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executePostRESPONSE= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 603
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_0
    if-eqz v4, :cond_0

    .line 604
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 606
    :cond_0
    iget v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    return v6

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e1":Ljava/lang/Exception;
    :goto_1
    const/4 v6, -0x2

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    goto :goto_0

    .line 600
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method private executeProbeRequestGet()I
    .locals 8

    .prologue
    .line 486
    const-string v6, "WISPR PROBE request started"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 487
    const/4 v3, 0x0

    .line 489
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 490
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 491
    const/16 v6, 0x2710

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 492
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 495
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 497
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 498
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    .line 499
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->getWisprMessageType()I

    move-result v6

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ProbeResponse= \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <Response> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 505
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    :goto_0
    if-eqz v3, :cond_0

    .line 506
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 508
    :cond_0
    iget v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    return v6

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e1":Ljava/lang/Exception;
    :goto_1
    const/4 v6, -0x2

    iput v6, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 503
    const-string v6, "ProbeResponse= SESSION_ERROR_TIMEOUT\n"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "httpclient":Lorg/apache/http/client/HttpClient;
    goto :goto_1
.end method

.method private static native getWisprHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getWisprMessageType()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 450
    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->WISP_ACCESS_GATEWAY_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->MESSAGE_TYPE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private handleAbortLoginResponse()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 704
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_0

    .line 718
    :goto_0
    return-void

    .line 706
    :sswitch_0
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    .line 708
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 711
    :sswitch_1
    const-string v0, "LOGIN_ABORTED_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleAuthPollResponse()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 673
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 674
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_0

    .line 698
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    .line 701
    :goto_0
    return-void

    .line 676
    :sswitch_0
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 683
    :sswitch_1
    const-string v0, "LOGIN FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    .line 689
    :sswitch_2
    const-string v0, "AUTH PENDING"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 691
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 693
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 695
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method private handleLogOffResponse()V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 721
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    packed-switch v0, :pswitch_data_0

    .line 728
    const-string v0, "LOGOFF FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 733
    :goto_0
    return-void

    .line 723
    :pswitch_0
    const-string v0, "LOGOFF SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
    .end packed-switch
.end method

.method private handleProxyNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 620
    const-string v0, "PROXY DETECTED - RETRY"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 622
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 623
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 624
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->NEXT_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    .line 626
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 628
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    if-ne v0, v2, :cond_1

    .line 630
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 635
    :cond_1
    :goto_0
    const/4 v0, 0x2

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    .line 636
    return-void

    .line 633
    :cond_2
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 396
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private logWisprMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 736
    const-string v3, ""

    .line 737
    .local v3, "srvDate":Ljava/lang/String;
    const-string v2, ""

    .line 740
    .local v2, "logFile":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "MM.dd.HH.mm.ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiWisprClient."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 751
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    const-string v4, "WifiWisprClient"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void

    .line 748
    :catch_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private parseGetMacIpFromResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "initialGetResponse"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 424
    :try_start_0
    const-string v2, "MacAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 425
    const-string v2, "MacAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "MacAddr="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 426
    .local v1, "startIndex":I
    const-string v2, "&amp;"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 427
    .local v0, "endIndex":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC_ADDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 430
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    :cond_0
    const-string v2, "IpAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 431
    const-string v2, "IpAddr="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "IpAddr="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 432
    .restart local v1    # "startIndex":I
    const-string v2, "&amp;"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 433
    .restart local v0    # "endIndex":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP_ADDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    :cond_1
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private parseHandleAuthNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 639
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 641
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    sparse-switch v0, :sswitch_data_0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Authentication Failure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    .line 670
    :goto_0
    return-void

    .line 643
    :sswitch_0
    const-string v0, "LOGIN SUCCESS"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGOFF_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLogOffUrl:Ljava/lang/String;

    .line 646
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 650
    :sswitch_1
    const-string v0, "LOGIN FAILURE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    .line 656
    :sswitch_2
    const-string v0, "AUTH PENDING"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->DELAY_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 658
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 660
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    .line 662
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc9 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseProbeResponse()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_PROCEDURE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAccessProcedure:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ACCESS_LOCATION_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAccessLocation:Ljava/lang/String;

    .line 611
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOCATION_NAME_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLocationName:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->AUTHENTICATION_SEED_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAuthSeed:Ljava/lang/String;

    .line 613
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->LOGIN_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mLoginUrl:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->ABORT_URL_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mAbortLoginUrl:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->RESPONSE_CODE_PARAM:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    .line 616
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->parseGetMacIpFromResponse(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private parserGetWisprParamInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "Param"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 478
    iget-object v1, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 481
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWisprClient;->parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private parserGetWisprParamString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "Param"    # Ljava/lang/String;

    .prologue
    .line 462
    const-string v1, "-3"

    .line 464
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 465
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 466
    .local v2, "startIndex":I
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "</"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v3, v4

    .line 467
    .local v0, "endIndex":I
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mServerResponse:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v0    # "endIndex":I
    .end local v2    # "startIndex":I
    :cond_0
    :goto_0
    return-object v1

    .line 471
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private retryWisprRequest(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 403
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 405
    const-string v0, "WifiWisprClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying: Attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Response Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Msg Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private startLoginRequest()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/16 v5, 0xa

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 344
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 345
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 346
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    .line 347
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    .line 348
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 356
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 357
    iget v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    if-le v3, v9, :cond_2

    .line 359
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 360
    const-string v3, "WifiWisprClient"

    const-string v4, "Login Aborted -- No SIM/Invalid SIM"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_1
    return-void

    .line 346
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 362
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETRY ATTEMPT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 363
    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v6, v3, v4}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 366
    :cond_3
    const-string v3, "WifiWisprClient"

    const-string v4, "Login for the case when SIM is present and Airplane Mode in ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 368
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    .line 369
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mMacAddr:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 370
    :cond_4
    iget v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    if-le v3, v9, :cond_5

    .line 371
    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 373
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETRY ATTEMPT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 374
    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v6, v3, v4}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 377
    :cond_6
    iput v7, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@attmobilityandroid.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSISDN Number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 385
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v3, "WifiWisprClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput v7, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@attmobilityandroid.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSISDN Number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiWisprClient;->mSIMmsisdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public cancelLogin()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiWisprClient;->mAbortLogin:Z

    .line 339
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    .line 340
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    .line 319
    :goto_0
    return-void

    .line 230
    :pswitch_0
    const-string v0, "WISPR START LOGIN"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 231
    const-string v0, "http://rsc.att.com/library/test/success.html"

    iput-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialGetURL:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->startLoginRequest()V

    goto :goto_0

    .line 235
    :pswitch_1
    const-string v0, "WISPR START INITIAL PROBE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->executeProbeRequestGet()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 237
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    sparse-switch v0, :sswitch_data_0

    .line 280
    const-string v0, "mMessageType == SESSION_ERROR_DEFAULT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    .line 239
    :sswitch_0
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 241
    const-string v0, "WISPR LOGGEDIN_..RECONFIRM"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 243
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 247
    :cond_0
    const-string v0, "WISPR LOGGEDIN_..CONFIRMED"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Landroid/net/wifi/WifiWisprClient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 253
    :sswitch_1
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->parseProbeResponse()V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResponseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    if-eqz v0, :cond_1

    .line 256
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->executeAuthRequestPost()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    .line 260
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mMessageType:I

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    .line 261
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->parseHandleAuthNotification()V

    goto :goto_0

    .line 263
    :cond_2
    const-string v0, "mMessageType != AUTHENTICATION_NOTIFICATION_MESSAGE_TYPE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_0

    .line 268
    :sswitch_2
    iget v0, p0, Landroid/net/wifi/WifiWisprClient;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 269
    invoke-direct {p0}, Landroid/net/wifi/WifiWisprClient;->handleProxyNotification()V

    goto/16 :goto_0

    .line 271
    :cond_3
    const-string v0, "mResponseCode != PROXY_DETECTION_CODE"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_0

    .line 276
    :sswitch_3
    const-string v0, "mMessageType == SESSION_ERROR_TIMEOUT"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWisprClient;->logWisprMessage(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiWisprClient;->retryWisprRequest(I)V

    goto/16 :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 237
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x6e -> :sswitch_2
    .end sparse-switch
.end method

.method public setHotSpotNotification(IZ)V
    .locals 9
    .param p1, "notifType"    # I
    .param p2, "mNotificationShown"    # Z

    .prologue
    const v8, 0x1080683

    const v7, 0x1080682

    const/4 v6, 0x1

    const v5, 0x1040664

    .line 818
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 819
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 820
    const-string v2, "WifiWisprClient"

    const-string/jumbo v3, "notificationManager == null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    .line 825
    sput p1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    .line 827
    sget v2, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 829
    :pswitch_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v4, 0x1040662

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 836
    .local v0, "notif":Landroid/app/Notification;
    invoke-virtual {v1, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 841
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_1
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v4, 0x1040665

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWisprClient;->mContext:Landroid/content/Context;

    const v4, 0x1040663

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 848
    .restart local v0    # "notif":Landroid/app/Notification;
    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startLogin()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    :try_start_0
    const-string/jumbo v1, "whash"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mRetryCounter:I

    .line 329
    iput v3, p0, Landroid/net/wifi/WifiWisprClient;->mInitialRetryCounter:I

    .line 330
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    .line 331
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "WifiWisprClient"

    const-string v2, "ERR: Could not load libwhash.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLogoff()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWisprClient;->sendEmptyMessage(I)Z

    .line 335
    return-void
.end method
