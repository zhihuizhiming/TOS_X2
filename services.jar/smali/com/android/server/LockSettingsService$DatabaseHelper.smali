.class Lcom/android/server/LockSettingsService$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    .line 503
    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 505
    iput-object p2, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 506
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 509
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 525
    const-string v1, "ro.lockscreen.disable.default"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 527
    .local v0, "lockScreenDisable":Z
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    # invokes: Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, p1, v2, v3, v5}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    const-string v3, "lockscreen.power_button_instantly_locks"

    iget-object v1, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x11100af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_0
    # invokes: Lcom/android/server/LockSettingsService;->writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, p1, v3, v1, v5}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 531
    return-void

    .line 530
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "value"    # Z

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO locksettings(name,user,value) VALUES(?,?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 566
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 567
    const/4 v1, 0x2

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 568
    const/4 v3, 0x3

    if-eqz p4, :cond_1

    const-wide/16 v1, 0x1

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 569
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 573
    :cond_0
    return-void

    .line 568
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v1
.end method

.method private maybeEnableWidgetSettingForUsers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 549
    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 550
    .local v3, "um":Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 552
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 553
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 554
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->hasWidgetsEnabledInKeyguard(I)Z

    move-result v1

    .line 555
    .local v1, "enabled":Z
    const-string v6, "LockSettingsDB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Widget upgrade uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", w[]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LockSettingsService$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v6, "lockscreen.widgets_enabled"

    invoke-direct {p0, p1, v6, v4, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IZ)V

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "enabled":Z
    .end local v4    # "userId":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 520
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->initializeDefaults(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 521
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 535
    move v0, p2

    .line 536
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->maybeEnableWidgetSettingForUsers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 540
    const/4 v0, 0x2

    .line 543
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 544
    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1
    return-void
.end method
