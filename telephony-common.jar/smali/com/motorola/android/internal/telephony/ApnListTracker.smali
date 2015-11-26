.class public Lcom/motorola/android/internal/telephony/ApnListTracker;
.super Ljava/lang/Object;
.source "ApnListTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final EVENT_APN_CHANGED:I = 0x2

.field static final EVENT_RECORDS_LOADED:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "ApnListTracker"


# instance fields
.field mAllApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mApnObserver:Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;

.field protected mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

.field private mHandler:Landroid/os/Handler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mLooper:Landroid/os/Looper;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Landroid/os/HandlerThread;

.field mUiccManager:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    .line 109
    new-instance v1, Lcom/motorola/android/internal/telephony/ApnListTracker$2;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/ApnListTracker$2;-><init>(Lcom/motorola/android/internal/telephony/ApnListTracker;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ApnListTracker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 72
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mLooper:Landroid/os/Looper;

    .line 74
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 75
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mUiccManager:Lcom/android/internal/telephony/uicc/UiccController;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    new-instance v1, Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;-><init>(Lcom/motorola/android/internal/telephony/ApnListTracker;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnObserver:Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnObserver:Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    new-instance v1, Lcom/motorola/android/internal/telephony/ApnListTracker$1;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/internal/telephony/ApnListTracker$1;-><init>(Lcom/motorola/android/internal/telephony/ApnListTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/ApnListTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/ApnListTracker;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/ApnListTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/ApnListTracker;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/ApnListTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/ApnListTracker;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->onRecordsLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/ApnListTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/ApnListTracker;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->onApnChanged()V

    return-void
.end method

.method private createAllApnList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    .line 190
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "operator":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "ApnListTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAllApnList: selection="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/ApnListTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    .line 203
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 27
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v26, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/android/internal/telephony/ApnListTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 238
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v20, "bearers"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "class"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v22, "mtusize"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v23, "max_conns"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-string v24, "wait_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v25, "max_conns_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-direct/range {v2 .. v25}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;IIIII)V

    .line 274
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v15    # "types":[Ljava/lang/String;
    :cond_1
    const-string v3, "ApnListTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createApnList: X result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-object v26

    .line 238
    .restart local v15    # "types":[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->getIccRecordsFrmUiccManager()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private onApnChanged()V
    .locals 5

    .prologue
    .line 162
    const-string v2, "ApnListTracker"

    const-string v3, "onApnChanged: createAllApnList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->createAllApnList()V

    .line 164
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    if-nez v2, :cond_0

    .line 166
    new-instance v2, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    .line 170
    :cond_0
    const-string v2, "1"

    const-string v3, "persist.radio.firstupafterfr"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 172
    .local v1, "flagFirstBoot":Z
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 174
    .local v0, "f36894Enabled":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 175
    const-string v2, "ApnListTracker"

    const-string v3, "Ignore syncing APN to BP before syncing from it."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "f36894Enabled":Z
    .end local v1    # "flagFirstBoot":Z
    :cond_1
    :goto_0
    return-void

    .line 177
    .restart local v0    # "f36894Enabled":Z
    .restart local v1    # "flagFirstBoot":Z
    :cond_2
    const-string v2, "ApnListTracker"

    const-string v3, "call checkAndSyncApnList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->checkAndSyncApnList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private onRecordsLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    const-string v0, "ApnListTracker"

    const-string v1, "onRecordsLoaded: createAllApnList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "1"

    const-string v1, "persist.radio.firstupafterfr"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    .line 146
    :cond_0
    const-string v0, "ApnListTracker"

    const-string v1, "call maybeUpdateApnListFromBP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->maybeUpdateApnListFromBP(Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ApnListTracker;->createAllApnList()V

    .line 152
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    .line 156
    :cond_2
    const-string v0, "ApnListTracker"

    const-string v1, "call checkAndSyncApnList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnSyncedToBP:Lcom/motorola/android/internal/telephony/ApnSyncedToBP;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ApnSyncedToBP;->checkAndSyncApnList(Ljava/util/ArrayList;)V

    .line 159
    :cond_3
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 225
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 229
    :goto_0
    return-object v0

    .line 227
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "ApnListTracker"

    const-string v1, "dispose ApnListTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mApnObserver:Lcom/motorola/android/internal/telephony/ApnListTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 128
    return-void
.end method

.method getIccRecordsFrmUiccManager()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mUiccManager:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 284
    const-string v0, "ApnListTracker"

    const-string v1, "ERROR: mUiccManager = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mUiccManager:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRecordsLoadedMsg()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ApnListTracker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method
