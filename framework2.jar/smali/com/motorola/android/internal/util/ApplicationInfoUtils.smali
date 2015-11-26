.class public Lcom/motorola/android/internal/util/ApplicationInfoUtils;
.super Ljava/lang/Object;
.source "ApplicationInfoUtils.java"


# static fields
.field private static final API_ID_VZWAPP:Ljava/lang/String; = "VZWAPPSAPN"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ApplicationInfoUtils"

.field private static final VZWAVS_PROVIDER_AUTH:Ljava/lang/String; = "com.verizon.vzwavs.provider"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    .line 281
    const-string v0, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private checkVZWAVS(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 285
    const/4 v8, 0x0

    .line 286
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 287
    .local v6, "APIIDs":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    move v1, v10

    .line 325
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 292
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_3

    .line 321
    if-eqz v8, :cond_2

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v10

    goto :goto_0

    .line 296
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.verizon.vzwavs.provider"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    .line 298
    .local v7, "cpInfo":Landroid/content/pm/ProviderInfo;
    if-nez v7, :cond_6

    .line 299
    sget-boolean v1, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "ApplicationInfoUtils"

    const-string v2, "com.verizon.vzwavs.provider not found."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :cond_4
    if-eqz v8, :cond_5

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v10

    goto :goto_0

    .line 302
    :cond_6
    :try_start_2
    iget-object v1, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    .line 303
    const-string v1, "ApplicationInfoUtils"

    const-string v2, "com.verizon.vzwavs.provider is not in a system apk!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    if-eqz v8, :cond_7

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move v1, v10

    goto :goto_0

    .line 306
    :cond_8
    :try_start_3
    sget-object v1, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 308
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 310
    :cond_9
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    if-eqz v6, :cond_b

    const-string v1, "VZWAPPSAPN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    sget-boolean v1, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "ApplicationInfoUtils"

    const-string v2, "vzwavs check succeed."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :cond_a
    const/4 v1, 0x1

    .line 321
    if-eqz v8, :cond_0

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 315
    :cond_b
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    if-nez v1, :cond_9

    .line 321
    :cond_c
    if-eqz v8, :cond_d

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "cpInfo":Landroid/content/pm/ProviderInfo;
    :cond_d
    :goto_1
    move v1, v10

    .line 325
    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v9

    .line 319
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "ApplicationInfoUtils"

    const-string v2, "Exception = "

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    if-eqz v8, :cond_d

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 321
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_e

    .line 322
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1
.end method

.method private isPackageInVzwHipriBlockList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 265
    .local v1, "pkgNameList":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 269
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 270
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    const/4 v2, 0x1

    goto :goto_0

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 267
    .end local v0    # "i":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "pkgName1"    # Ljava/lang/String;
    .param p2, "pkgName2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 87
    const/4 v7, 0x0

    .line 91
    .local v7, "signatureMatch":Z
    :try_start_0
    iget-object v9, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .local v1, "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v9, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 106
    .local v6, "permissionPackagePkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    .line 108
    :cond_0
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ApplicationInfoUtils"

    const-string v10, "Packageinfo not found"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v1    # "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "permissionPackagePkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    return v8

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ApplicationInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name Not Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 103
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ApplicationInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package Name Not Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "permissionPackagePkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 113
    .local v0, "callingAppSignatures":[Landroid/content/pm/Signature;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 115
    .local v5, "permissionAppSignatures":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v0

    if-ge v3, v9, :cond_5

    if-nez v7, :cond_5

    .line 116
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v9, v5

    if-ge v4, v9, :cond_3

    .line 117
    aget-object v9, v0, v3

    aget-object v10, v5, v4

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    const/4 v7, 0x1

    .line 115
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 116
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 123
    .end local v4    # "j":I
    :cond_5
    if-eqz v7, :cond_7

    .line 124
    sget-boolean v9, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "ApplicationInfoUtils"

    const-string v10, "Signature Match"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    .line 127
    :cond_7
    new-instance v9, Ljava/lang/SecurityException;

    const-string v10, "ApplicationInfoUtils Signature Mismatch"

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    .end local v0    # "callingAppSignatures":[Landroid/content/pm/Signature;
    .end local v3    # "i":I
    .end local v5    # "permissionAppSignatures":[Landroid/content/pm/Signature;
    :catch_2
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v9, "ApplicationInfoUtils"

    const-string v10, "CompareAnySignature, Signature Mismatch"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkApnAccessPermissions(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "permissionPackage"    # Ljava/lang/String;
    .param p4, "metadata"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getFirstPackageNamefromPID(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "callingPackageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 231
    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->checkVZWAVS(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 232
    goto :goto_0

    .line 236
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->isPackageInVzwHipriBlockList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 240
    invoke-virtual {p0, v0, p3}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->CompareAnySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 241
    .local v4, "signatureMatch":Z
    if-eqz v4, :cond_3

    move v2, v5

    .line 242
    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->isSystemApp(I)Z

    move-result v1

    .line 246
    .local v1, "isSystemApp":Z
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "pkgListforUid":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {p0, v3, p4}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->checkMetaData([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 252
    .local v2, "metadataFound":Z
    goto :goto_0
.end method

.method public checkMetaData([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgNames"    # [Ljava/lang/String;
    .param p2, "metadata"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    aget-object v6, p1, v3

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 177
    .local v0, "appi":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 178
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    sget-boolean v5, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "ApplicationInfoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Metadata for Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " matches"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    const/4 v4, 0x1

    .line 191
    .end local v0    # "appi":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return v4

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "ApplicationInfoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "appi":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "appi":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    sget-boolean v5, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "ApplicationInfoUtils"

    const-string v6, "Metadata Mismatch"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getFirstPackageNamefromPID(I)Ljava/lang/String;
    .locals 9
    .param p1, "pid"    # I

    .prologue
    .line 60
    const-string v1, ""

    .line 62
    .local v1, "callingPackageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 64
    .local v0, "actvityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 65
    .local v5, "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v4, 0x0

    .line 66
    .local v4, "pidFound":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 68
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_2

    .line 69
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "actvityManager":Landroid/app/ActivityManager;
    .end local v3    # "i":I
    .end local v4    # "pidFound":Z
    .end local v5    # "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    :goto_1
    sget-boolean v6, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "ApplicationInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling Package Name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-object v1

    .line 66
    .restart local v0    # "actvityManager":Landroid/app/ActivityManager;
    .restart local v3    # "i":I
    .restart local v4    # "pidFound":Z
    .restart local v5    # "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "actvityManager":Landroid/app/ActivityManager;
    .end local v3    # "i":I
    .end local v4    # "pidFound":Z
    .end local v5    # "processInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getPackagesforUid(I)[Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    :goto_0
    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ApplicationInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packages for corresponding Uid- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemApp(I)Z
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, "preLoadedSystemApp":Z
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->getPackagesforUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "callingPackageNames":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 152
    .local v0, "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 154
    const/4 v3, 0x1

    .line 162
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "ApplicationInfoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Preloaded App? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 163
    .end local v0    # "callingApplicationPkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Lcom/motorola/android/internal/util/ApplicationInfoUtils;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "ApplicationInfoUtils"

    const-string v6, "Package Name for corresponding Uid Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
